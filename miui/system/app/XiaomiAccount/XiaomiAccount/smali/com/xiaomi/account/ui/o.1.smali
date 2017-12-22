.class Lcom/xiaomi/account/ui/o;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/account/ui/p;",
        ">;"
    }
.end annotation


# instance fields
.field private aD:Landroid/content/Context;

.field private aE:Lcom/xiaomi/passport/ui/C;

.field final synthetic aF:Lcom/xiaomi/account/ui/m;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/ui/m;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/o;->aD:Landroid/content/Context;

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    const v1, 0x7f0c010e

    invoke-virtual {p1, v1}, Lcom/xiaomi/account/ui/m;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/o;->aE:Lcom/xiaomi/passport/ui/C;

    iget-object v0, p0, Lcom/xiaomi/account/ui/o;->aE:Lcom/xiaomi/passport/ui/C;

    new-instance v1, Lcom/xiaomi/account/ui/aN;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/aN;-><init>(Lcom/xiaomi/account/ui/o;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/C;->xE(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/o;->aE:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {p1}, Lcom/xiaomi/account/ui/m;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "uploadAvatarProgress"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs bF([Ljava/lang/Void;)Lcom/xiaomi/account/ui/p;
    .locals 13

    iget-object v0, p0, Lcom/xiaomi/account/ui/o;->aD:Landroid/content/Context;

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v0, "UserAvatarUpdateFragmen"

    const-string/jumbo v1, "no xiaomi account"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-static {v0}, Lcom/xiaomi/account/ui/m;->bz(Lcom/xiaomi/account/ui/m;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-static {v0, v6}, Lcom/xiaomi/account/ui/m;->bA(Lcom/xiaomi/account/ui/m;Ljava/io/File;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/o;->aD:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    iget-object v0, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "passportapi"

    invoke-static {v0, v1}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v9

    const/4 v3, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v4, v0

    move v0, v3

    :goto_0
    const/4 v3, 0x2

    if-ge v4, v3, :cond_f

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v9, v7}, Lcom/xiaomi/accountsdk/account/b;->abJ(Lcom/xiaomi/accountsdk/account/data/a;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, "acc_avatar_url"

    invoke-virtual {v8, v5, v10, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-virtual {v3}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v10, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-virtual {v10}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0011

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-static {v3, v7, v10}, Lmiui/graphics/BitmapFactory;->createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_18
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "xiaomi_user_avatar_"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v10, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v10, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-virtual {v10}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, v1, v2}, Lcom/xiaomi/passport/utils/r;->Ey(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    const-string/jumbo v10, "acc_avatar_file_name"

    invoke-virtual {v8, v5, v10, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidParameterException; {:try_start_2 .. :try_end_2} :catch_19
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-static {v1, v6}, Lcom/xiaomi/account/ui/m;->bA(Lcom/xiaomi/account/ui/m;Ljava/io/File;)V

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    :goto_2
    new-instance v1, Lcom/xiaomi/account/ui/p;

    iget-object v2, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    new-instance v4, Lcom/xiaomi/account/data/d;

    invoke-direct {v4, v0}, Lcom/xiaomi/account/data/d;-><init>(I)V

    invoke-direct {v1, v2, v4, v3}, Lcom/xiaomi/account/ui/p;-><init>(Lcom/xiaomi/account/ui/m;Lcom/xiaomi/account/data/d;Landroid/graphics/Bitmap;)V

    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v2, "UserAvatarUpdateFragmen"

    const-string/jumbo v4, "fileInputStream"

    invoke-static {v2, v4, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_3
    :try_start_4
    const-string/jumbo v3, "UserAvatarUpdateFragmen"

    const-string/jumbo v4, "uploadInfoToServer error"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x5

    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-static {v1, v6}, Lcom/xiaomi/account/ui/m;->bA(Lcom/xiaomi/account/ui/m;Ljava/io/File;)V

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    move-object v3, v2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string/jumbo v3, "UserAvatarUpdateFragmen"

    const-string/jumbo v4, "fileInputStream"

    invoke-static {v3, v4, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    :goto_5
    :try_start_6
    const-string/jumbo v2, "UserAvatarUpdateFragmen"

    const-string/jumbo v4, "uploadInfoToServer error"

    invoke-static {v2, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v0, 0x3

    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_7
    :goto_6
    iget-object v1, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-static {v1, v6}, Lcom/xiaomi/account/ui/m;->bA(Lcom/xiaomi/account/ui/m;Ljava/io/File;)V

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :catch_4
    move-exception v1

    const-string/jumbo v2, "UserAvatarUpdateFragmen"

    const-string/jumbo v4, "fileInputStream"

    invoke-static {v2, v4, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    :goto_7
    :try_start_8
    const-string/jumbo v2, "UserAvatarUpdateFragmen"

    const-string/jumbo v4, "uploadInfoToServer error"

    invoke-static {v2, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v0, 0x3

    if-eqz v1, :cond_8

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_8
    :goto_8
    iget-object v1, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-static {v1, v6}, Lcom/xiaomi/account/ui/m;->bA(Lcom/xiaomi/account/ui/m;Ljava/io/File;)V

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    :catch_6
    move-exception v1

    const-string/jumbo v2, "UserAvatarUpdateFragmen"

    const-string/jumbo v4, "fileInputStream"

    invoke-static {v2, v4, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    :goto_9
    :try_start_a
    const-string/jumbo v2, "UserAvatarUpdateFragmen"

    const-string/jumbo v4, "uploadInfoToServer error"

    invoke-static {v2, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v0, 0x4

    if-eqz v1, :cond_9

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_9
    :goto_a
    iget-object v1, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-static {v1, v6}, Lcom/xiaomi/account/ui/m;->bA(Lcom/xiaomi/account/ui/m;Ljava/io/File;)V

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    :catch_8
    move-exception v1

    const-string/jumbo v2, "UserAvatarUpdateFragmen"

    const-string/jumbo v4, "fileInputStream"

    invoke-static {v2, v4, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :catch_9
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    :goto_b
    :try_start_c
    const-string/jumbo v2, "UserAvatarUpdateFragmen"

    const-string/jumbo v10, "uploadInfoToServer error"

    invoke-static {v2, v10, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    :cond_a
    :goto_c
    iget-object v0, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-static {v0, v6}, Lcom/xiaomi/account/ui/m;->bA(Lcom/xiaomi/account/ui/m;Ljava/io/File;)V

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_0

    :catch_a
    move-exception v0

    const-string/jumbo v10, "UserAvatarUpdateFragmen"

    const-string/jumbo v11, "fileInputStream"

    invoke-static {v10, v11, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :catch_b
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    :goto_d
    :try_start_e
    const-string/jumbo v2, "UserAvatarUpdateFragmen"

    const-string/jumbo v4, "uploadInfoToServer error"

    invoke-static {v2, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const/4 v0, 0x2

    if-eqz v1, :cond_c

    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    :cond_c
    :goto_e
    iget-object v1, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-static {v1, v6}, Lcom/xiaomi/account/ui/m;->bA(Lcom/xiaomi/account/ui/m;Ljava/io/File;)V

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    :catch_c
    move-exception v1

    const-string/jumbo v2, "UserAvatarUpdateFragmen"

    const-string/jumbo v4, "fileInputStream"

    invoke-static {v2, v4, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_f
    if-eqz v1, :cond_d

    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    :cond_d
    :goto_10
    iget-object v1, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-static {v1, v6}, Lcom/xiaomi/account/ui/m;->bA(Lcom/xiaomi/account/ui/m;Ljava/io/File;)V

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    throw v0

    :catch_d
    move-exception v1

    const-string/jumbo v2, "UserAvatarUpdateFragmen"

    const-string/jumbo v3, "fileInputStream"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :catchall_1
    move-exception v0

    goto :goto_f

    :catch_e
    move-exception v0

    move-object v1, v2

    goto :goto_d

    :catch_f
    move-exception v0

    goto :goto_d

    :catch_10
    move-exception v0

    move-object v1, v2

    goto/16 :goto_b

    :catch_11
    move-exception v0

    goto/16 :goto_b

    :catch_12
    move-exception v0

    move-object v1, v2

    goto/16 :goto_9

    :catch_13
    move-exception v0

    goto/16 :goto_9

    :catch_14
    move-exception v0

    move-object v1, v2

    goto/16 :goto_7

    :catch_15
    move-exception v0

    goto/16 :goto_7

    :catch_16
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5

    :catch_17
    move-exception v0

    goto/16 :goto_5

    :catch_18
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_3

    :catch_19
    move-exception v0

    move-object v2, v3

    goto/16 :goto_3

    :cond_f
    move-object v3, v1

    goto/16 :goto_2
.end method

.method protected bG(Lcom/xiaomi/account/ui/p;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/account/ui/p;->bJ()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/account/ui/p;->bJ()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    return-void
.end method

.method protected bH(Lcom/xiaomi/account/ui/p;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/o;->aE:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/account/ui/p;->bI()Lcom/xiaomi/account/data/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lP()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/account/ui/o;->aD:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lQ()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/account/ui/p;->bJ()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-static {v0}, Lcom/xiaomi/account/ui/m;->bx(Lcom/xiaomi/account/ui/m;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-static {v0}, Lcom/xiaomi/account/ui/m;->bx(Lcom/xiaomi/account/ui/m;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-virtual {p1}, Lcom/xiaomi/account/ui/p;->bJ()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/m;->by(Lcom/xiaomi/account/ui/m;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-static {v0}, Lcom/xiaomi/account/ui/m;->bv(Lcom/xiaomi/account/ui/m;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/o;->aF:Lcom/xiaomi/account/ui/m;

    invoke-static {v1}, Lcom/xiaomi/account/ui/m;->bx(Lcom/xiaomi/account/ui/m;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/o;->bF([Ljava/lang/Void;)Lcom/xiaomi/account/ui/p;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/ui/p;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/o;->bG(Lcom/xiaomi/account/ui/p;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/ui/p;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/o;->bH(Lcom/xiaomi/account/ui/p;)V

    return-void
.end method
