.class Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;
.super Landroid/os/AsyncTask;
.source "FindDeviceKeyguardPageUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCaptchaTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;


# direct methods
.method private constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    .prologue
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 14
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 587
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/xiaomi/accountsdk/account/XMPassport;->ACCOUNT_DOMAIN:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-static {v9}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-get4(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 588
    .local v7, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 590
    .local v1, "c":Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-static {v7, v8, v9}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->getAsStream(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 598
    .end local v1    # "c":Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;
    :goto_0
    if-nez v1, :cond_0

    .line 599
    invoke-static {v10, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    return-object v8

    .line 595
    .restart local v1    # "c":Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;
    :catch_0
    move-exception v3

    .line 596
    .local v3, "e":Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
    new-array v8, v13, [Ljava/lang/Object;

    const-string/jumbo v9, "Failed to get the captcha image. "

    aput-object v9, v8, v11

    aput-object v3, v8, v12

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 593
    .end local v3    # "e":Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
    :catch_1
    move-exception v2

    .line 594
    .local v2, "e":Lcom/xiaomi/accountsdk/request/AccessDeniedException;
    new-array v8, v13, [Ljava/lang/Object;

    const-string/jumbo v9, "Failed to get the captcha image. "

    aput-object v9, v8, v11

    aput-object v2, v8, v12

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 591
    .end local v2    # "e":Lcom/xiaomi/accountsdk/request/AccessDeniedException;
    :catch_2
    move-exception v4

    .line 592
    .local v4, "e":Ljava/io/IOException;
    new-array v8, v13, [Ljava/lang/Object;

    const-string/jumbo v9, "Failed to get the captcha image. "

    aput-object v9, v8, v11

    aput-object v4, v8, v12

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 602
    .end local v1    # "c":Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;->getStream()Ljava/io/InputStream;

    move-result-object v6

    .line 603
    .local v6, "input":Ljava/io/InputStream;
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 604
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v8, "ick"

    invoke-virtual {v1, v8}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 605
    .local v5, "ick":Ljava/lang/String;
    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 607
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;->closeStream()V

    .line 605
    return-object v8

    .line 606
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "ick":Ljava/lang/String;
    .end local v6    # "input":Ljava/io/InputStream;
    :catchall_0
    move-exception v8

    .line 607
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;->closeStream()V

    .line 606
    throw v8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 586
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 613
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Bitmap;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set7(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;)Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;

    .line 614
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-static {v0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-wrap3(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Landroid/util/Pair;)V

    .line 612
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 612
    check-cast p1, Landroid/util/Pair;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
