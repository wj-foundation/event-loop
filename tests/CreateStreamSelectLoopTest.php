<?php
namespace Wangjian\Foundation\EventLoop\Test;

use PHPUnit\Framework\TestCase;
use Wangjian\Foundation\EventLoop\EventLoopFactory;
use Wangjian\Foundation\EventLoop\StreamSelectLoop;

class CreateStreamSelectLoopTest extends TestCase
{
    public function testCreateStreamSelectLoopTest()
    {
        $loop = EventLoopFactory::createLoop();

        $this->assertInstanceOf(StreamSelectLoop::class, $loop);
    }
}