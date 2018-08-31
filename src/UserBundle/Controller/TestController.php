<?php

namespace UserBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Response;

class TestController extends Controller
{
    /**
     * @Route("/api/test")
     */
    public function indexAction()
    {
        return new Response(
            json_encode(
                [
                    'success'     => true,
                    'description' => 'Success! Protected by JWT token route.',
                ]
            ),
            Response::HTTP_OK,
            ['Content-Type' => 'application/json']
        );
    }
}
