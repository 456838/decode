.class final Lcom/xiaomi/passport/v2/utils/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/uicontroller/B;


# instance fields
.field final synthetic Ha:Lcom/xiaomi/passport/v2/utils/f;

.field final synthetic Hb:Lcom/xiaomi/passport/uicontroller/B;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/f;Lcom/xiaomi/passport/uicontroller/B;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/w;->Ha:Lcom/xiaomi/passport/v2/utils/f;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/utils/w;->Hb:Lcom/xiaomi/passport/uicontroller/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public KM(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/w;->Ha:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    const-string/jumbo v0, "LoginUIController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loginByPhone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/w;->Hb:Lcom/xiaomi/passport/uicontroller/B;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/uicontroller/B;->KM(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method public KN(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/w;->Ha:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/w;->Ha:Lcom/xiaomi/passport/v2/utils/f;

    new-instance v1, Lcom/xiaomi/passport/v2/utils/x;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/utils/w;->Hb:Lcom/xiaomi/passport/uicontroller/B;

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/passport/v2/utils/x;-><init>(Lcom/xiaomi/passport/v2/utils/w;Lcom/xiaomi/passport/uicontroller/B;)V

    new-instance v2, Lcom/xiaomi/passport/v2/utils/y;

    iget-object v3, p0, Lcom/xiaomi/passport/v2/utils/w;->Hb:Lcom/xiaomi/passport/uicontroller/B;

    invoke-direct {v2, p0, v3}, Lcom/xiaomi/passport/v2/utils/y;-><init>(Lcom/xiaomi/passport/v2/utils/w;Lcom/xiaomi/passport/uicontroller/B;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaomi/passport/v2/utils/f;->Lu(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Lcom/xiaomi/passport/v2/utils/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public KO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/w;->Ha:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/w;->Hb:Lcom/xiaomi/passport/uicontroller/B;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/uicontroller/B;->KO(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public KP()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/w;->Ha:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    const-string/jumbo v0, "LoginUIController"

    const-string/jumbo v1, "loginByPhone:invalid phone num"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/w;->Hb:Lcom/xiaomi/passport/uicontroller/B;

    invoke-interface {v0}, Lcom/xiaomi/passport/uicontroller/B;->KP()V

    return-void
.end method

.method public KQ()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/w;->Ha:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    const-string/jumbo v0, "LoginUIController"

    const-string/jumbo v1, "loginByPhone:token expired"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/w;->Hb:Lcom/xiaomi/passport/uicontroller/B;

    invoke-interface {v0}, Lcom/xiaomi/passport/uicontroller/B;->KQ()V

    return-void
.end method
