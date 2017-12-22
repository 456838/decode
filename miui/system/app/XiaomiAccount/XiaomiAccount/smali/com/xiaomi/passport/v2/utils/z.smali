.class final Lcom/xiaomi/passport/v2/utils/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/uicontroller/C;


# instance fields
.field final synthetic Hg:Lcom/xiaomi/passport/v2/utils/f;

.field final synthetic Hh:Lcom/xiaomi/passport/uicontroller/C;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/f;Lcom/xiaomi/passport/uicontroller/C;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/z;->Hg:Lcom/xiaomi/passport/v2/utils/f;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/utils/z;->Hh:Lcom/xiaomi/passport/uicontroller/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public KR(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/z;->Hg:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    const-string/jumbo v0, "LoginUIController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerByPhone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/z;->Hh:Lcom/xiaomi/passport/uicontroller/C;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/uicontroller/C;->KR(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method public KS()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/z;->Hg:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    const-string/jumbo v0, "LoginUIController"

    const-string/jumbo v1, "registerByPhone: reach register limit"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/z;->Hh:Lcom/xiaomi/passport/uicontroller/C;

    invoke-interface {v0}, Lcom/xiaomi/passport/uicontroller/C;->KS()V

    return-void
.end method

.method public KT(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/z;->Hg:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/z;->Hh:Lcom/xiaomi/passport/uicontroller/C;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/uicontroller/C;->KT(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    return-void
.end method

.method public KU()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/z;->Hg:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    const-string/jumbo v0, "LoginUIController"

    const-string/jumbo v1, "registerByPhone: token expired"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/z;->Hh:Lcom/xiaomi/passport/uicontroller/C;

    invoke-interface {v0}, Lcom/xiaomi/passport/uicontroller/C;->KU()V

    return-void
.end method
