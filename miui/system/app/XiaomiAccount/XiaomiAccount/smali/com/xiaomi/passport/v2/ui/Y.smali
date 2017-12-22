.class final Lcom/xiaomi/passport/v2/ui/Y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/uicontroller/D;


# instance fields
.field final synthetic Fn:Lcom/xiaomi/passport/v2/ui/X;

.field final synthetic Fo:Lcom/xiaomi/passport/v2/ui/p;

.field final synthetic Fp:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/X;Lcom/xiaomi/passport/v2/ui/p;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/Y;->Fn:Lcom/xiaomi/passport/v2/ui/X;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/Y;->Fo:Lcom/xiaomi/passport/v2/ui/p;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/Y;->Fp:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iv()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/Y;->Fn:Lcom/xiaomi/passport/v2/ui/X;

    iget-object v0, v0, Lcom/xiaomi/passport/v2/ui/X;->Fk:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jz(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/Y;->Fn:Lcom/xiaomi/passport/v2/ui/X;

    iget-object v0, v0, Lcom/xiaomi/passport/v2/ui/X;->Fk:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hl:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v1, v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    const v2, 0x7f0c0022

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->JC(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;II)V

    return-void
.end method

.method public iw(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/Y;->Fn:Lcom/xiaomi/passport/v2/ui/X;

    iget-object v0, v0, Lcom/xiaomi/passport/v2/ui/X;->Fk:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jz(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;)V

    const-string/jumbo v0, "SetPasswordActivity"

    invoke-static {v0, p2}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/Y;->Fn:Lcom/xiaomi/passport/v2/ui/X;

    iget-object v0, v0, Lcom/xiaomi/passport/v2/ui/X;->Fk:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    invoke-static {p1}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->LH(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;)I

    move-result v1

    const v2, 0x7f0c0022

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->JC(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;II)V

    return-void
.end method

.method public ix(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/Y;->Fn:Lcom/xiaomi/passport/v2/ui/X;

    iget-object v0, v0, Lcom/xiaomi/passport/v2/ui/X;->Fk:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jz(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/Y;->Fo:Lcom/xiaomi/passport/v2/ui/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/Y;->Fo:Lcom/xiaomi/passport/v2/ui/p;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/v2/ui/p;->is(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/Y;->Fp:Landroid/content/Context;

    const v1, 0x7f0c0023

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
