.class public Lcom/xiaomi/account/authenticator/XmAuthenticationService;
.super Landroid/app/Service;
.source ""


# instance fields
.field private ih:Lcom/xiaomi/account/authenticator/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string/jumbo v0, "XmAuthenticationService"

    const-string/jumbo v1, "return the xm AccountAuthenticator binder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/account/authenticator/XmAuthenticationService;->ih:Lcom/xiaomi/account/authenticator/a;

    invoke-virtual {v0}, Lcom/xiaomi/account/authenticator/a;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/xiaomi/account/authenticator/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/authenticator/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/account/authenticator/XmAuthenticationService;->ih:Lcom/xiaomi/account/authenticator/a;

    return-void
.end method
