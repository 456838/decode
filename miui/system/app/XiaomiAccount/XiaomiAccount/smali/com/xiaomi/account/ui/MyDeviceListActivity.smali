.class public Lcom/xiaomi/account/ui/MyDeviceListActivity;
.super Lmiui/app/Activity;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/SimpleAdapter;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/View;

.field private f:Lcom/xiaomi/account/ui/b;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move v1, v0

    :goto_0
    div-int v4, v2, v0

    if-le v4, p2, :cond_2

    div-int v4, v3, v0

    if-le v4, p1, :cond_2

    mul-int/lit8 v1, v0, 0x2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static b(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, p1, p2}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private c(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/account/data/k;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/data/k;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "device_icon"

    invoke-virtual {v0}, Lcom/xiaomi/account/data/k;->mJ()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "device_model"

    invoke-virtual {v0}, Lcom/xiaomi/account/data/k;->mK()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private d()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->b:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c015a

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    const v1, 0x7f0c0095

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/account/ui/MyDeviceListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic g(Lcom/xiaomi/account/ui/MyDeviceListActivity;)Landroid/widget/SimpleAdapter;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->a:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic h(Lcom/xiaomi/account/ui/MyDeviceListActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/xiaomi/account/ui/MyDeviceListActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic j(Lcom/xiaomi/account/ui/MyDeviceListActivity;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->a:Landroid/widget/SimpleAdapter;

    return-object p1
.end method

.method static synthetic k(Lcom/xiaomi/account/ui/MyDeviceListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic l(Lcom/xiaomi/account/ui/MyDeviceListActivity;Lcom/xiaomi/account/ui/b;)Lcom/xiaomi/account/ui/b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->f:Lcom/xiaomi/account/ui/b;

    return-object p1
.end method

.method static synthetic m(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->b(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Lcom/xiaomi/account/ui/MyDeviceListActivity;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->c(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/xiaomi/account/ui/MyDeviceListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->d()V

    return-void
.end method

.method static synthetic p(Lcom/xiaomi/account/ui/MyDeviceListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->e()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    if-ne p2, v1, :cond_0

    const-string/jumbo v0, "list_position_param"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/xiaomi/account/data/j;->mz()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->a:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->d()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->setContentView(I)V

    const v0, 0x7f100025

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->g:Landroid/view/View;

    const v0, 0x7f100027

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->c:Landroid/view/View;

    const v0, 0x7f100029

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->e:Landroid/view/View;

    invoke-direct {p0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->d()V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->d:Landroid/widget/ListView;

    invoke-static {v1}, Lcom/xiaomi/account/data/j;->my(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->f:Lcom/xiaomi/account/ui/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/account/ui/b;

    invoke-direct {v0, p0, p0}, Lcom/xiaomi/account/ui/b;-><init>(Lcom/xiaomi/account/ui/MyDeviceListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->f:Lcom/xiaomi/account/ui/b;

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->f:Lcom/xiaomi/account/ui/b;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/ui/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->f:Lcom/xiaomi/account/ui/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->f:Lcom/xiaomi/account/ui/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/b;->cancel(Z)Z

    iput-object v2, p0, Lcom/xiaomi/account/ui/MyDeviceListActivity;->f:Lcom/xiaomi/account/ui/b;

    :cond_0
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "list_position_param"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, ":miui:starting_window_label"

    invoke-static {}, Lcom/xiaomi/account/data/j;->mz()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/data/k;

    invoke-virtual {v0}, Lcom/xiaomi/account/data/k;->mK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->finish()V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/account/utils/p;->ol(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0c0147

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.account.action.DEVICE_LIST"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/account/ui/NoNetworkActivity;->fy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->finish()V

    :cond_1
    return-void
.end method
