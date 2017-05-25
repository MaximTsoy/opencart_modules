<?php

class ControllerExtensionModuleOrderscreen extends Controller
{
    public function index()
    {

        $this->load->language('extension/module/orderscreen');

        $this->load->model('setting/setting');
        $this->load->model('catalog/product');
        $this->load->model('tool/image');

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_register'] = $this->language->get('text_register');
        $data['text_login'] = $this->language->get('text_login');
        $data['text_logout'] = $this->language->get('text_logout');
        $data['text_forgotten'] = $this->language->get('text_forgotten');
        $data['text_orderscreen'] = $this->language->get('text_orderscreen');
        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_password'] = $this->language->get('text_password');
        $data['text_address'] = $this->language->get('text_address');
        $data['text_wishlist'] = $this->language->get('text_wishlist');
        $data['text_order'] = $this->language->get('text_order');
        $data['text_download'] = $this->language->get('text_download');
        $data['text_reward'] = $this->language->get('text_reward');
        $data['text_return'] = $this->language->get('text_return');
        $data['text_transaction'] = $this->language->get('text_transaction');
        $data['text_newsletter'] = $this->language->get('text_newsletter');
        $data['text_recurring'] = $this->language->get('text_recurring');


        $data['check'] = 'Eto orderscreen';
        $temp = $this->model_setting_setting->getSetting('orderscreen');

        $temp = json_decode($temp['products'], true);
        $data['products'] = array(
            'big' => array(),
            'small' => array()
        );

        $count = 0;
        $group = 0;


        foreach ($temp['big'] as $id) {
            if ($count < 4) {
                $products = $this->model_catalog_product->getProduct($id);
                $data['products']['big'][$group][] = array(
                    'id' => $products['product_id'],
                    'image' => $products['image'],
                    'name' => $products['name'],
                    'price' => $products['price'],
                    'rating' => $products['rating']
                );
                $count++;
            } else {
                $group++;
                $products = $this->model_catalog_product->getProduct($id);
                $data['products']['big'][$group][] = array(
                    'id' => $products['product_id'],
                    'image' => $products['image'],
                    'name' => $products['name'],
                    'price' => $products['price'],
                    'rating' => $products['rating']
                );
                $count = 1;
            }
        }

        $count = 0;
        $group = 0;

        foreach ($temp['small'] as $id) {
            if ($count < 9) {
                $product = $this->model_catalog_product->getProduct($id);
                $data['products']['small'][$group][] = array(
                    'id' => $product['product_id'],
                    'image' => $product['image'],
                    'name' => $product['name'],
                    'price' => $product['price'],
                    'rating' => $product['rating']
                );
                $count++;
            } else {
                $group++;
                $product = $this->model_catalog_product->getProduct($id);
                $data['products']['small'][$group][] = array(
                    'id' => $product['product_id'],
                    'image' => $product['image'],
                    'name' => $product['name'],
                    'price' => $product['price'],
                    'rating' => $product['rating']
                );
                $count = 1;
            }
        }
        /*
        $data['adminka'][] = array(
                'product_id'  => $product_info['product_id'],
                'thumb'       => $image,
                'name'        => $product_info['name'],
                'description' => utf8_substr(strip_tags(html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
                'price'       => $price,
                'special'     => $special,
                'tax'         => $tax,
                'rating'      => $rating,
                'href'        => $this->url->link('product/product', 'product_id=' . $product_info['product_id'])
            );*/
        return $this->load->view('extension/module/orderscreen', $data);
    }

    public function getconfirm(){
        //echo $this->request->post['products'];
        $this->load->model('catalog/product');

        $products = json_decode($this->request->post['products']);
        $data['products'] = array();

        foreach($products as $product_id){
            $temp = $this->model_catalog_product->getProduct($product_id);
            $data['products'][] = array (
                'name' => $temp['name'],
                'price' => $temp['price'],
                'image' => $temp['image'],
            );
        }

        echo $this->load->view('extension/module/orderscreen_step3', $data);
    }
}