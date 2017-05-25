<?php
class ControllerExtensionModuleOrderscreen extends Controller {
	private $error = array();

	public function index() {
		// Подгружаем язык и стиль
	    $this->load->language('extension/module/orderscreen');
	    $this->document->addStyle('view/stylesheet/user.css');

        // Подгружаем заголовок
        $this->document->setTitle($this->language->get('heading_title'));

        // Подгружаем модель setting
        $this->load->model('setting/setting');
        $this->load->model('catalog/product');

        // Выводим продукты из БД
        $temp = $this->model_setting_setting->getSetting('orderscreen');
        $temp = json_decode($temp['products'],true);
        $data['products_big'] = array();
        if($temp){
            foreach ($temp['big'] as $product_id) {
                $related_info = $this->model_catalog_product->getProduct($product_id);

                if ($related_info) {
                    $data['products_big'][] = array(
                        'product_id' => $related_info['product_id'],
                        'name'       => $related_info['name']
                    );
                }
            }
        }

        // Сохранение данных
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('orderscreen', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true));

            if (!isset($this->request->get['module_id'])) {
                $this->model_extension_module->addModule('orderscreen', $this->request->post);
            } else {
                $this->model_extension_module->editModule($this->request->get['module_id'], $this->request->post);
            }
		}

		// Задаем разные параметры для html
		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');

		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_related'] = $this->language->get('entry_related');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

        $data['token'] = $this->session->data['token'];

		// Блок вывода ошибок
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		// Блок бредкрамбс
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/module/orderscreen', 'token=' . $this->session->data['token'], true)
		);

		$data['action'] = $this->url->link('extension/module/orderscreen', 'token=' . $this->session->data['token'], true);

		$data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true);

		// Изменение status (включение или выключение)
		if (isset($this->request->post['orderscreen_status'])) {
			$data['orderscreen_status'] = $this->request->post['orderscreen_status'];
		} else {
			$data['orderscreen_status'] = $this->config->get('orderscreen_status');
		}

		// Задаем контроллеры для шаблонов
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
    if (isset($this->request->post['limit'])) {
			$data['limit'] = $this->request->post['limit'];
		} elseif (!empty($module_info)) {
			$data['limit'] = $module_info['limit'];
		} else {
			$data['limit'] = 5;
		}
		// Выводим наш основной шаблон
		$this->response->setOutput($this->load->view('extension/module/orderscreen', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/orderscreen')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}

	public function install() {
		if ($this->user->hasPermission('modify', 'extension/extension')) {
			$this->load->model('extension/module/orderscreen');

			$this->model_extension_module_orderscreen->install();
		}
	}

	public function uninstall() {
		if ($this->user->hasPermission('modify', 'extension/extension')) {
			$this->load->model('extension/module/orderscreen');

			$this->model_extension_module_orderscreen->uninstall();
		}
	}
}