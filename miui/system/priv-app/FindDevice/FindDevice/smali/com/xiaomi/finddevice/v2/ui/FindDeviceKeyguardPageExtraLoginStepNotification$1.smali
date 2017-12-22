.class Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$1;
.super Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginUICallback;
.source "FindDeviceKeyguardPageExtraLoginStepNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->performLoginEndTask(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$1;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected call(Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;)V
    .locals 2
    .param p1, "future"    # Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$1;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->-set0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;)Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;

    .line 119
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$1;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;

    invoke-static {v0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->-wrap3(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;)V

    .line 117
    return-void
.end method
