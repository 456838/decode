.class final Lcom/xiaomi/passport/v2/utils/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic He:Lcom/xiaomi/passport/v2/utils/w;

.field final synthetic Hf:Lcom/xiaomi/passport/uicontroller/B;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/w;Lcom/xiaomi/passport/uicontroller/B;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/y;->He:Lcom/xiaomi/passport/v2/utils/w;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/utils/y;->Hf:Lcom/xiaomi/passport/uicontroller/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "LoginUIController"

    const-string/jumbo v1, "loginByPhone: fail to add account manager"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/y;->Hf:Lcom/xiaomi/passport/uicontroller/B;

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Jj:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    const-string/jumbo v2, "fail to add account manager"

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/passport/uicontroller/B;->KM(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    return-void
.end method
