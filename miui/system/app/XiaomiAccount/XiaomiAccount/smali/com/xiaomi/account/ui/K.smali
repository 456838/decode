.class Lcom/xiaomi/account/ui/K;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic cO:Lcom/xiaomi/account/ui/I;


# direct methods
.method private constructor <init>(Lcom/xiaomi/account/ui/I;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/K;->cO:Lcom/xiaomi/account/ui/I;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/ui/I;Lcom/xiaomi/account/ui/K;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/K;-><init>(Lcom/xiaomi/account/ui/I;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/K;->fw([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs fw([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lmiui/telephony/a;->aHD()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/account/ui/K;->cO:Lcom/xiaomi/account/ui/I;

    invoke-static {v1, v0}, Lcom/xiaomi/account/ui/I;->fk(Lcom/xiaomi/account/ui/I;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected fx(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InputBindedPhoneFragmen"

    const-string/jumbo v1, "sim card is zero or it is not activated"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/K;->cO:Lcom/xiaomi/account/ui/I;

    invoke-static {v0, p1}, Lcom/xiaomi/account/ui/I;->fo(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/K;->fx(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/K;->cO:Lcom/xiaomi/account/ui/I;

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/I;->fp(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V

    return-void
.end method
