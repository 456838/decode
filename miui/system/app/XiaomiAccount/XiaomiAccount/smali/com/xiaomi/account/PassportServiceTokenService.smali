.class public Lcom/xiaomi/account/PassportServiceTokenService;
.super Landroid/app/Service;
.source ""


# static fields
.field private static final nI:Ljava/lang/String;


# instance fields
.field private final nJ:Lcom/xiaomi/passport/IPassportServiceTokenService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/account/PassportServiceTokenService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/account/PassportServiceTokenService;->nI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/xiaomi/account/u;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/u;-><init>(Lcom/xiaomi/account/PassportServiceTokenService;)V

    iput-object v0, p0, Lcom/xiaomi/account/PassportServiceTokenService;->nJ:Lcom/xiaomi/passport/IPassportServiceTokenService$Stub;

    return-void
.end method

.method private rc(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 1

    new-instance v0, Lcom/xiaomi/account/v;

    invoke-direct {v0, p0, p0, p1}, Lcom/xiaomi/account/v;-><init>(Lcom/xiaomi/account/PassportServiceTokenService;Lcom/xiaomi/account/PassportServiceTokenService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/account/v;->rh()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method

.method private rd(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 2

    new-instance v0, Lcom/xiaomi/account/w;

    iget-object v1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/xiaomi/account/w;-><init>(Lcom/xiaomi/account/PassportServiceTokenService;Lcom/xiaomi/account/PassportServiceTokenService;Ljava/lang/String;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V

    invoke-virtual {v0}, Lcom/xiaomi/account/w;->rh()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic re()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/PassportServiceTokenService;->nI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic rf(Lcom/xiaomi/account/PassportServiceTokenService;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/account/PassportServiceTokenService;->rc(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic rg(Lcom/xiaomi/account/PassportServiceTokenService;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/account/PassportServiceTokenService;->rd(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/PassportServiceTokenService;->nJ:Lcom/xiaomi/passport/IPassportServiceTokenService$Stub;

    return-object v0
.end method
