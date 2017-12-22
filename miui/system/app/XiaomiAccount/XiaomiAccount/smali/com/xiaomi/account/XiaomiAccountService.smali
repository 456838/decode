.class public Lcom/xiaomi/account/XiaomiAccountService;
.super Landroid/app/Service;
.source ""


# instance fields
.field private final nD:Ljava/lang/Object;

.field private nE:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/account/XiaomiAccountService;->nD:Ljava/lang/Object;

    new-instance v0, Lcom/xiaomi/account/s;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/s;-><init>(Lcom/xiaomi/account/XiaomiAccountService;)V

    iput-object v0, p0, Lcom/xiaomi/account/XiaomiAccountService;->nE:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;

    return-void
.end method

.method static synthetic qM(Lcom/xiaomi/account/XiaomiAccountService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/XiaomiAccountService;->nD:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/XiaomiAccountService;->nE:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;

    return-object v0
.end method
