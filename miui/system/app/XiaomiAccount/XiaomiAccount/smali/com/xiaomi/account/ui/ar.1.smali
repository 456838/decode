.class final Lcom/xiaomi/account/ui/ar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/uicontroller/D;


# instance fields
.field final synthetic fa:Lcom/xiaomi/account/ui/aq;

.field final synthetic fb:Lcom/xiaomi/passport/v2/ui/p;

.field final synthetic fc:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/aq;Lcom/xiaomi/passport/v2/ui/p;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/ar;->fa:Lcom/xiaomi/account/ui/aq;

    iput-object p2, p0, Lcom/xiaomi/account/ui/ar;->fb:Lcom/xiaomi/passport/v2/ui/p;

    iput-object p3, p0, Lcom/xiaomi/account/ui/ar;->fc:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iv()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/ar;->fa:Lcom/xiaomi/account/ui/aq;

    iget-object v0, v0, Lcom/xiaomi/account/ui/aq;->eX:Lcom/xiaomi/account/ui/SetPasswordActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->at(Lcom/xiaomi/account/ui/SetPasswordActivity;)V

    const-string/jumbo v0, "SetPasswordActivity"

    const-string/jumbo v1, "sms reach limit"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/account/ui/ar;->fa:Lcom/xiaomi/account/ui/aq;

    iget-object v0, v0, Lcom/xiaomi/account/ui/aq;->eX:Lcom/xiaomi/account/ui/SetPasswordActivity;

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hl:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v1, v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    const v2, 0x7f0c0022

    invoke-static {v0, v2, v1}, Lcom/xiaomi/account/ui/SetPasswordActivity;->av(Lcom/xiaomi/account/ui/SetPasswordActivity;II)V

    return-void
.end method

.method public iw(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/ar;->fa:Lcom/xiaomi/account/ui/aq;

    iget-object v0, v0, Lcom/xiaomi/account/ui/aq;->eX:Lcom/xiaomi/account/ui/SetPasswordActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->at(Lcom/xiaomi/account/ui/SetPasswordActivity;)V

    const-string/jumbo v0, "SetPasswordActivity"

    invoke-static {v0, p2}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/account/ui/ar;->fa:Lcom/xiaomi/account/ui/aq;

    iget-object v0, v0, Lcom/xiaomi/account/ui/aq;->eX:Lcom/xiaomi/account/ui/SetPasswordActivity;

    invoke-static {p1}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->LH(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;)I

    move-result v1

    const v2, 0x7f0c0022

    invoke-static {v0, v2, v1}, Lcom/xiaomi/account/ui/SetPasswordActivity;->av(Lcom/xiaomi/account/ui/SetPasswordActivity;II)V

    return-void
.end method

.method public ix(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/ar;->fa:Lcom/xiaomi/account/ui/aq;

    iget-object v0, v0, Lcom/xiaomi/account/ui/aq;->eX:Lcom/xiaomi/account/ui/SetPasswordActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->at(Lcom/xiaomi/account/ui/SetPasswordActivity;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/ar;->fb:Lcom/xiaomi/passport/v2/ui/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/ar;->fb:Lcom/xiaomi/passport/v2/ui/p;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/v2/ui/p;->is(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/ar;->fc:Landroid/content/Context;

    const v1, 0x7f0c0185

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
