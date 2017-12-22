.class Lcom/xiaomi/account/ui/q;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/account/data/k;",
        ">;"
    }
.end annotation


# instance fields
.field private aP:Landroid/content/Context;

.field final synthetic aQ:Lcom/xiaomi/account/ui/MyDeviceActivity;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/ui/MyDeviceActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/account/ui/q;->aQ:Lcom/xiaomi/account/ui/MyDeviceActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/q;->aP:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs bT([Ljava/lang/Void;)Lcom/xiaomi/account/data/k;
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/q;->aP:Landroid/content/Context;

    const-string/jumbo v1, "deviceinfo"

    invoke-static {v0, v1}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v0, "MyDeviceActivity"

    const-string/jumbo v1, "null passportInfo"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    move-object v1, v3

    :goto_0
    const/4 v0, 0x2

    if-ge v2, v0, :cond_6

    :try_start_0
    invoke-static {v4}, Lcom/xiaomi/account/utils/q;->oA(Lcom/xiaomi/passport/data/c;)Lcom/xiaomi/account/data/k;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v0, "MyDeviceActivity"

    const-string/jumbo v5, "deviceInfo is null"

    invoke-static {v0, v5}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    :cond_1
    return-object v3

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/q;->aP:Landroid/content/Context;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/xiaomi/passport/utils/r;->EH(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v5}, Lcom/xiaomi/account/data/k;->mH()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Lcom/xiaomi/accountsdk/request/b;->adG(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/h;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/account/ui/q;->aP:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/h;->aec()Ljava/io/InputStream;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v6, v7}, Lcom/xiaomi/passport/utils/r;->Ey(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v5, v0}, Lcom/xiaomi/account/data/k;->mI(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    :cond_5
    return-object v5

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "MyDeviceActivity"

    const-string/jumbo v4, "access denied"

    invoke-static {v2, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    :cond_6
    :goto_1
    return-object v3

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v5, "MyDeviceActivity"

    const-string/jumbo v6, "auth failure"

    invoke-static {v5, v6, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/account/ui/q;->aP:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "MyDeviceActivity"

    const-string/jumbo v4, "IOException"

    invoke-static {v2, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_5
    const-string/jumbo v2, "MyDeviceActivity"

    const-string/jumbo v4, "CipherException"

    invoke-static {v2, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    goto :goto_1

    :catch_4
    move-exception v0

    :try_start_6
    const-string/jumbo v2, "MyDeviceActivity"

    const-string/jumbo v4, "invalid response"

    invoke-static {v2, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    :cond_8
    throw v0
.end method

.method protected bU(Lcom/xiaomi/account/data/k;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/q;->aQ:Lcom/xiaomi/account/ui/MyDeviceActivity;

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/MyDeviceActivity;->bQ(Lcom/xiaomi/account/ui/MyDeviceActivity;Lcom/xiaomi/account/ui/q;)Lcom/xiaomi/account/ui/q;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/account/data/k;->mJ()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/account/data/k;->mJ()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method protected bV(Lcom/xiaomi/account/data/k;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/q;->aQ:Lcom/xiaomi/account/ui/MyDeviceActivity;

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/MyDeviceActivity;->bQ(Lcom/xiaomi/account/ui/MyDeviceActivity;Lcom/xiaomi/account/ui/q;)Lcom/xiaomi/account/ui/q;

    if-nez p1, :cond_0

    const-string/jumbo v0, "MyDeviceActivity"

    const-string/jumbo v1, "deviceInfo is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/q;->aQ:Lcom/xiaomi/account/ui/MyDeviceActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->bN(Lcom/xiaomi/account/ui/MyDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/account/data/k;->mK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/q;->aP:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/account/data/k;->mL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/account/data/k;->mM()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/q;->aQ:Lcom/xiaomi/account/ui/MyDeviceActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->bP(Lcom/xiaomi/account/ui/MyDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/account/data/k;->mJ()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/account/ui/q;->aQ:Lcom/xiaomi/account/ui/MyDeviceActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->bM(Lcom/xiaomi/account/ui/MyDeviceActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/account/data/k;->mJ()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/account/ui/q;->aQ:Lcom/xiaomi/account/ui/MyDeviceActivity;

    invoke-static {v1, v0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->bS(Lcom/xiaomi/account/ui/MyDeviceActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/q;->bT([Ljava/lang/Void;)Lcom/xiaomi/account/data/k;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/data/k;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/q;->bU(Lcom/xiaomi/account/data/k;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/data/k;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/q;->bV(Lcom/xiaomi/account/data/k;)V

    return-void
.end method
