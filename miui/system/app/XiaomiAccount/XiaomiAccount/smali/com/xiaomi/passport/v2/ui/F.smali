.class final Lcom/xiaomi/passport/v2/ui/F;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/uicontroller/z;


# instance fields
.field final synthetic Ew:Lcom/xiaomi/passport/v2/ui/c;

.field final synthetic Ex:Landroid/widget/TextView;

.field final synthetic Ey:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/c;Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/F;->Ex:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/F;->Ey:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public KV()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IY(Lcom/xiaomi/passport/v2/ui/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IV(Lcom/xiaomi/passport/v2/ui/c;)Lcom/xiaomi/passport/ui/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IV(Lcom/xiaomi/passport/v2/ui/c;)Lcom/xiaomi/passport/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/h;->dismiss()V

    :cond_1
    return-void
.end method

.method public KW(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IY(Lcom/xiaomi/passport/v2/ui/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IV(Lcom/xiaomi/passport/v2/ui/c;)Lcom/xiaomi/passport/ui/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/accountsdk/account/c;->VQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/h;->tn(Ljava/lang/String;)V

    return-void
.end method

.method public KX()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IY(Lcom/xiaomi/passport/v2/ui/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IV(Lcom/xiaomi/passport/v2/ui/c;)Lcom/xiaomi/passport/ui/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IV(Lcom/xiaomi/passport/v2/ui/c;)Lcom/xiaomi/passport/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/h;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hm:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v1, v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    const v2, 0x7f0c0022

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/c;->Je(Lcom/xiaomi/passport/v2/ui/c;II)V

    return-void
.end method

.method public KY()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IY(Lcom/xiaomi/passport/v2/ui/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IV(Lcom/xiaomi/passport/v2/ui/c;)Lcom/xiaomi/passport/ui/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IV(Lcom/xiaomi/passport/v2/ui/c;)Lcom/xiaomi/passport/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/h;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hl:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v1, v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    const v2, 0x7f0c0022

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/c;->Je(Lcom/xiaomi/passport/v2/ui/c;II)V

    return-void
.end method

.method public KZ(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IY(Lcom/xiaomi/passport/v2/ui/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IV(Lcom/xiaomi/passport/v2/ui/c;)Lcom/xiaomi/passport/ui/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IV(Lcom/xiaomi/passport/v2/ui/c;)Lcom/xiaomi/passport/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/h;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {p1}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->LH(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;)I

    move-result v1

    const v2, 0x7f0c0022

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/c;->Je(Lcom/xiaomi/passport/v2/ui/c;II)V

    return-void
.end method

.method public La()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IY(Lcom/xiaomi/passport/v2/ui/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/F;->Ex:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/c;->IJ(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-virtual {v0}, Lcom/xiaomi/passport/v2/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0023

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ey:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ey:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IV(Lcom/xiaomi/passport/v2/ui/c;)Lcom/xiaomi/passport/ui/h;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/F;->Ew:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IV(Lcom/xiaomi/passport/v2/ui/c;)Lcom/xiaomi/passport/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/h;->dismiss()V

    :cond_2
    return-void
.end method
