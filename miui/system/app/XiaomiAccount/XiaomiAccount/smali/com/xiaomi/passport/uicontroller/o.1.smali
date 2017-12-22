.class abstract Lcom/xiaomi/passport/uicontroller/o;
.super Lcom/xiaomi/accountsdk/a/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelDataType:",
        "Ljava/lang/Object;",
        "UIDataType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/accountsdk/a/e",
        "<",
        "Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;",
        "TModelDataType;TUIDataType;>;"
    }
.end annotation


# instance fields
.field final synthetic IM:Lcom/xiaomi/passport/uicontroller/n;


# direct methods
.method protected constructor <init>(Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/accountsdk/a/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/a/a",
            "<TModelDataType;TUIDataType;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/o;->IM:Lcom/xiaomi/passport/uicontroller/n;

    invoke-static {p1}, Lcom/xiaomi/passport/uicontroller/n;->Nm(Lcom/xiaomi/passport/uicontroller/n;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/passport/uicontroller/n;->Nk(Lcom/xiaomi/passport/uicontroller/n;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/xiaomi/passport/uicontroller/n;->Nl(Lcom/xiaomi/passport/uicontroller/n;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/xiaomi/accountsdk/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/a/a;)V

    return-void
.end method


# virtual methods
.method protected ML()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TModelDataType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/o;->Nn()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected MX(Landroid/os/IBinder;)Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub;->NK(Landroid/os/IBinder;)Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic MX(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/uicontroller/o;->MX(Landroid/os/IBinder;)Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;

    move-result-object v0

    return-object v0
.end method

.method protected abstract Nn()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TModelDataType;"
        }
    .end annotation
.end method
