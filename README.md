# FlaskProject
## 项目依赖环境：
* os: CentOS Linux release 7.3 阿里云ECS服务直接提供
* python3.5 [安装方式](https://blog.csdn.net/u010472499/article/details/53412411)
* apache2.4 [安装方式](https://www.cnblogs.com/me80/p/7218883.html)中第一步
* db: mysql  Ver 15.1 Distrib 5.5.56-MariaDB [安装方式](https://www.cnblogs.com/me80/p/7218883.html)中第二步及[补充](https://blog.csdn.net/a1010256340/article/details/77334097)
* mod_wsgi [安装方式](https://www.cnblogs.com/dapianzi/p/7723829.html)

## 文件列表描述：
* apns: apple推送服务需要用到的密钥文件，其中主要用两个nokey后缀的文件(tips: 这两个文件是用我自己的macbook pro得到的，后期如果要换mac开发需要重新做密钥文件)
* app: flask app项目主体所有的web后端逻辑全部在这个文件夹中
    * enginer: 存放工程师界面的业务逻辑
    * main: 主页面业务逻辑
    * report: 报表页面业务逻辑
    * static: 存放所有的静态文件如js、css、图片等
    * templates: 存放所有的html模版，所有html基本都继承于base1.html
    * UE: 这个文件夹是APP的业务逻辑，和web应用基本无关
    * user: 存放用户登录、注册等与用户相关的业务逻辑
    * __init__.py: 很重要! 整个app的工厂函数，负责初始化app，建立蓝图等等
    * DataBaseClass.py: mysql数据库的工具类
    * decorators/py: 用户权限判断的装饰器
    * models.py: mysql数据库中各个数据表的模版，后期自动创建表依据该模版
* Dtabase: 存放后台故障诊断和数据库业务相关的代码
    * DtaBaseClass.py: 数据库自动创建、维护工具类
    * DtaBaseOperation.py: 旧版本单个设备实例的故障诊断代码(已弃用)
    * diagnosis.py: 后台故障诊断的启动代码(对不同的设备用不同的线程跑诊断，考虑用multi-process代替threading库，主要原因在于python自带的全局锁)
    * models.py: 作用同app/models.py，不赘述
    * scaleOperation: 设备类，包含设备的属性和设备操作
* developFile: 存放开发者文件(tips: 后期如果要换mac开发需要重新做密钥文件)
* EqpDataAccept: 收集现场设备信息的业务逻辑代码存放位置
    * server.py: 信息收集主程序负责调用serverclass
    * serverclass.py: 同步采收集设备信息server类(单个设备采用)
    * serverclassyibu.py: 异步采集设备信息，主要用于多个设备情况(考虑用multi-process代替threading库，主要原因在于python自带的全局锁)
* log: 日志文件夹，存放Apache和python日志文件(现在主要依赖apache日志系统，考虑引入python logging)
* config.py: flask配置文件
* managr.py: flask启动文件
* manager.wsgi: mod_wsgi配置文件 