.class public Lcom/xiaomi/account/ui/m;
.super Lcom/xiaomi/account/ui/x;
.source ""


# instance fields
.field private au:Ljava/io/File;

.field private av:Landroid/widget/ImageView;

.field private aw:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ax:Ljava/lang/String;

.field private ay:Lcom/xiaomi/account/ui/o;

.field private az:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/x;-><init>()V

    return-void
.end method

.method static synthetic bA(Lcom/xiaomi/account/ui/m;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/m;->bl(Ljava/io/File;)V

    return-void
.end method

.method static synthetic bB(Lcom/xiaomi/account/ui/m;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/m;->bm(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic bC(Lcom/xiaomi/account/ui/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/m;->bp()V

    return-void
.end method

.method private static bk(Landroid/content/Intent;I)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "crop"

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "scale"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "scaleUpIfNeeded"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "aspectX"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "aspectY"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "outputX"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "outputY"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method private bl(Ljava/io/File;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method private bm(Landroid/net/Uri;)V
    .locals 6

    const/4 v5, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v0, "UserAvatarUpdateFragmen"

    const-string/jumbo v1, "inputUri is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.miui.gallery"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.xiaomi.account.fileprovider"

    invoke-direct {p0}, Lcom/xiaomi/account/ui/m;->bn()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.miui.gallery"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    const-string/jumbo v1, "tips"

    const v2, 0x7f0c010c

    invoke-virtual {p0, v2}, Lcom/xiaomi/account/ui/m;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/xiaomi/account/ui/m;->bo()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/m;->bk(Landroid/content/Intent;I)V

    const/16 v1, 0x3ec

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/ui/m;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UserAvatarUpdateFragmen"

    const-string/jumbo v2, "Cannot crop image"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0110

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private bn()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->au:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xiaomi_user_avatar_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/m;->bl:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/account/ui/m;->au:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->au:Ljava/io/File;

    return-object v0
.end method

.method private bo()I
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/m;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private bp()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c010d

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/aO;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/aO;-><init>(Lcom/xiaomi/account/ui/m;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private bq(Lcom/xiaomi/account/data/e;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "UserAvatarUpdateFragmen"

    const-string/jumbo v1, "startLoadSnsInfo snsAccountInfo is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->aw:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->aw:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/xiaomi/account/ui/m;->aw:Landroid/os/AsyncTask;

    :cond_1
    new-instance v0, Lcom/xiaomi/account/ui/n;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/xiaomi/account/ui/n;-><init>(Lcom/xiaomi/account/ui/m;Landroid/content/Context;Lcom/xiaomi/account/data/e;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/m;->aw:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->aw:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private br()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/ui/m;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private bs()V
    .locals 5

    const-string/jumbo v0, "com.android.camera"

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.camera"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.xiaomi.account.fileprovider"

    invoke-direct {p0}, Lcom/xiaomi/account/ui/m;->bn()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.android.camera"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/ui/m;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private bt()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->ay:Lcom/xiaomi/account/ui/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->ay:Lcom/xiaomi/account/ui/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/o;->cancel(Z)Z

    iput-object v2, p0, Lcom/xiaomi/account/ui/m;->ay:Lcom/xiaomi/account/ui/o;

    :cond_0
    new-instance v0, Lcom/xiaomi/account/ui/o;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/account/ui/o;-><init>(Lcom/xiaomi/account/ui/m;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/m;->ay:Lcom/xiaomi/account/ui/o;

    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->ay:Lcom/xiaomi/account/ui/o;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/ui/o;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private bu(Ljava/lang/String;)V
    .locals 5

    iput-object p1, p0, Lcom/xiaomi/account/ui/m;->ax:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->ax:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/account/data/e;->lW(Ljava/lang/String;)Lcom/xiaomi/account/data/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/account/ui/m;->bl:Landroid/accounts/Account;

    invoke-virtual {v0}, Lcom/xiaomi/account/data/e;->lT()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/xiaomi/account/ui/SnsAddAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_sns_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_show_sns_account_after_binding_success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/ui/m;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/m;->bq(Lcom/xiaomi/account/data/e;)V

    goto :goto_0
.end method

.method static synthetic bv(Lcom/xiaomi/account/ui/m;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->av:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic bw(Lcom/xiaomi/account/ui/m;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->ax:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bx(Lcom/xiaomi/account/ui/m;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->az:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic by(Lcom/xiaomi/account/ui/m;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/m;->az:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic bz(Lcom/xiaomi/account/ui/m;)Ljava/io/File;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/account/ui/m;->bn()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/xiaomi/account/ui/x;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/m;->bl:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->bl:Landroid/accounts/Account;

    if-nez v0, :cond_0

    const-string/jumbo v0, "UserAvatarUpdateFragmen"

    const-string/jumbo v1, "no xiaomi account"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/m;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_avatar_file_name"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/m;->az:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/account/ui/m;->az:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/account/utils/p;->on(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/m;->az:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->az:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->av:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xiaomi/account/ui/m;->az:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/account/ui/x;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->ax:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "UserAvatarUpdateFragmen"

    const-string/jumbo v1, "onActivityResult mSnsType is empty"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->ax:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/account/data/e;->lW(Ljava/lang/String;)Lcom/xiaomi/account/data/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/m;->bq(Lcom/xiaomi/account/data/e;)V

    return-void

    :pswitch_1
    if-ne p2, v0, :cond_1

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.account.fileprovider"

    invoke-direct {p0}, Lcom/xiaomi/account/ui/m;->bn()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/m;->bm(Landroid/net/Uri;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    if-ne p2, v0, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/account/ui/m;->bt()V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/account/ui/x;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/m;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "pref_using_sns_avatar"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/m;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "pref_using_weibo_avatar"

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/m;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v1, "pref_using_qq_avatar"

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/m;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "pref_using_facebook_avatar"

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/m;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/account/ui/x;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const v1, 0x7f03005a

    const/4 v3, 0x0

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f1000bd

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/xiaomi/account/ui/m;->av:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    :cond_0
    return-object v2
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->ay:Lcom/xiaomi/account/ui/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->ay:Lcom/xiaomi/account/ui/o;

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/ui/o;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/m;->ay:Lcom/xiaomi/account/ui/o;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->aw:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->aw:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/m;->aw:Landroid/os/AsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->az:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/m;->az:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/xiaomi/account/ui/m;->az:Landroid/graphics/Bitmap;

    :cond_2
    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onDestroy()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    const-string/jumbo v0, "pref_using_weibo_avatar"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "sina"

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/m;->bu(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/xiaomi/account/ui/x;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    const-string/jumbo v0, "pref_using_qq_avatar"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "qq"

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/m;->bu(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "pref_using_facebook_avatar"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "facebook"

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/m;->bu(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "pref_by_taking_a_photo"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/xiaomi/account/ui/m;->bs()V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "pref_using_album_photo"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/m;->br()V

    goto :goto_0
.end method

.method protected w()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "UserAvatarUpdateFragmen"

    return-object v0
.end method
