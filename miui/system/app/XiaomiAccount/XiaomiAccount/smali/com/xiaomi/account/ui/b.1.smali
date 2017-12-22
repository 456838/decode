.class Lcom/xiaomi/account/ui/b;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xiaomi/account/data/k;",
        ">;>;"
    }
.end annotation


# instance fields
.field private i:Landroid/content/Context;

.field final synthetic j:Lcom/xiaomi/account/ui/MyDeviceListActivity;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/ui/MyDeviceListActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/account/ui/b;->j:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/b;->i:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/b;->q([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/b;->r(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/b;->s(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected varargs q([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/account/data/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/account/ui/b;->i:Landroid/content/Context;

    const-string/jumbo v1, "deviceinfo"

    invoke-static {v0, v1}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v0, "MyDeviceListActivity"

    const-string/jumbo v1, "null passportInfo"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/b;->j:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v0, p0, Lcom/xiaomi/account/ui/b;->j:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/b;->i:Landroid/content/Context;

    invoke-static {v0}, Lmiui/telephony/a;->aHy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/h;->ahG(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    const/4 v0, 0x2

    if-ge v5, v0, :cond_a

    :try_start_1
    invoke-static {v6}, Lcom/xiaomi/account/utils/q;->ov(Lcom/xiaomi/passport/data/c;)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_2

    const-string/jumbo v0, "MyDeviceListActivity"

    const-string/jumbo v4, "device list is null"

    invoke-static {v0, v4}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "MyDeviceListActivity"

    const-string/jumbo v5, "illegal device"

    invoke-static {v4, v5, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/data/k;

    invoke-virtual {v0}, Lcom/xiaomi/account/data/k;->mF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/account/data/k;->mF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    :goto_3
    move-object v3, v0

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    :cond_5
    iget-object v4, p0, Lcom/xiaomi/account/ui/b;->i:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/account/data/k;->mG()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-static {v12, v7, v8}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->m(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_7

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_6
    invoke-virtual {v0}, Lcom/xiaomi/account/data/k;->mH()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v4, v12, v13}, Lcom/xiaomi/accountsdk/request/b;->adG(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/h;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/account/ui/b;->j:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/h;->aec()Ljava/io/InputStream;

    move-result-object v12

    invoke-virtual {v0}, Lcom/xiaomi/account/data/k;->mG()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v12, v13}, Lcom/xiaomi/passport/utils/r;->Ey(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v7, v8}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->m(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_7
    if-eqz v4, :cond_d

    invoke-virtual {v0, v4}, Lcom/xiaomi/account/data/k;->mI(Landroid/graphics/Bitmap;)V

    move-object v0, v3

    goto :goto_3

    :cond_8
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    :cond_9
    return-object v9

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "MyDeviceListActivity"

    const-string/jumbo v2, "access denied"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    :cond_a
    :goto_4
    const/4 v0, 0x0

    return-object v0

    :catch_2
    move-exception v0

    :try_start_4
    const-string/jumbo v4, "MyDeviceListActivity"

    const-string/jumbo v9, "auth failure"

    invoke-static {v4, v9, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/account/ui/b;->i:Landroid/content/Context;

    invoke-virtual {v6, v0}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    :cond_b
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "MyDeviceListActivity"

    const-string/jumbo v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    goto :goto_4

    :catch_4
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "MyDeviceListActivity"

    const-string/jumbo v2, "CipherException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    goto :goto_4

    :catch_5
    move-exception v0

    :try_start_7
    const-string/jumbo v1, "MyDeviceListActivity"

    const-string/jumbo v2, "invalid response"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    goto :goto_4

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    :cond_c
    throw v0

    :cond_d
    move-object v0, v3

    goto/16 :goto_3
.end method

.method protected r(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/account/data/k;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/b;->j:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->l(Lcom/xiaomi/account/ui/MyDeviceListActivity;Lcom/xiaomi/account/ui/b;)Lcom/xiaomi/account/ui/b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/data/k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/account/data/k;->mJ()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/account/data/k;->mJ()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected s(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/account/data/k;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/b;->j:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    invoke-static {v0, v7}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->l(Lcom/xiaomi/account/ui/MyDeviceListActivity;Lcom/xiaomi/account/ui/b;)Lcom/xiaomi/account/ui/b;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/b;->j:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->p(Lcom/xiaomi/account/ui/MyDeviceListActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/b;->j:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    iget-object v1, p0, Lcom/xiaomi/account/ui/b;->j:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    invoke-static {v1, p1}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->n(Lcom/xiaomi/account/ui/MyDeviceListActivity;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->k(Lcom/xiaomi/account/ui/MyDeviceListActivity;Ljava/util/List;)Ljava/util/List;

    iget-object v6, p0, Lcom/xiaomi/account/ui/b;->j:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/xiaomi/account/ui/b;->j:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    iget-object v2, p0, Lcom/xiaomi/account/ui/b;->j:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    invoke-static {v2}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->h(Lcom/xiaomi/account/ui/MyDeviceListActivity;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string/jumbo v3, "device_icon"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string/jumbo v3, "device_model"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const v3, 0x7f100012

    const v5, 0x7f100010

    filled-new-array {v3, v5}, [I

    move-result-object v5

    const v3, 0x7f030005

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-static {v6, v0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->j(Lcom/xiaomi/account/ui/MyDeviceListActivity;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;

    iget-object v0, p0, Lcom/xiaomi/account/ui/b;->j:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->g(Lcom/xiaomi/account/ui/MyDeviceListActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/a;

    iget-object v2, p0, Lcom/xiaomi/account/ui/b;->j:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    invoke-direct {v1, v2, v7}, Lcom/xiaomi/account/ui/a;-><init>(Lcom/xiaomi/account/ui/MyDeviceListActivity;Lcom/xiaomi/account/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/b;->j:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->i(Lcom/xiaomi/account/ui/MyDeviceListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/b;->j:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->g(Lcom/xiaomi/account/ui/MyDeviceListActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {p1}, Lcom/xiaomi/account/data/j;->my(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/b;->j:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->o(Lcom/xiaomi/account/ui/MyDeviceListActivity;)V

    goto :goto_0
.end method
