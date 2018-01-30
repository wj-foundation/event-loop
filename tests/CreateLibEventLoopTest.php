<?php
namespace Wangjian\Foundation\EventLoop\Test;

use PHPUnit\Framework\TestCase;
use Wangjian\Foundation\EventLoop\EventLoopFactory;
use Wangjian\Foundation\EventLoop\LibEventLoop;

class CreateLibEventLoopTest extends TestCase
{
    public function testCreateLibEventLoop()
    {
        $loop = EventLoopFactory::createLoop();

        $this->assertInstanceOf(LibEventLoop::class, $loop);
    }
}