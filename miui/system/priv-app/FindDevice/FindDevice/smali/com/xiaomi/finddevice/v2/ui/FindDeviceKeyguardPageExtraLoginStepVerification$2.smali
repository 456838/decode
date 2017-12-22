.class Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification$2;
.super Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginUICallback;
.source "FindDeviceKeyguardPageExtraLoginStepVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->performVerify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification$2;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected call(Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;)V
    .locals 2
    .param p1, "future"    # Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification$2;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->-set0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;)Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;

    .line 129
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification$2;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;

    invoke-static {v0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->-wrap1(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;)V

    .line 127
    return-void
.end method
