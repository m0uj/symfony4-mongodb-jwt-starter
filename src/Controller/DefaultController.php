<?php
/**
 * Created by PhpStorm.
 * User: tplus
 * Date: 12/18/17
 * Time: 10:42 AM
 */

namespace App\Controller;

use App\Document\User;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="default")
     */
    public function defaultAction(Request $request) {
        return new Response(
            '<html><body>Welcome</body></html>'
        );
    }
}