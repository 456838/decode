.class public Lcom/xiaomi/account/ui/k;
.super Lcom/xiaomi/account/ui/L;
.source ""


# instance fields
.field private Y:Ljava/lang/String;

.field private Z:Lcom/amap/api/location/AMapLocationClient;

.field private aa:Lcom/amap/api/location/AMapLocationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/account/ui/L;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/account/ui/k;->Z:Lcom/amap/api/location/AMapLocationClient;

    new-instance v0, Lcom/xiaomi/account/ui/aB;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/ui/aB;-><init>(Lcom/xiaomi/account/ui/k;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/k;->aa:Lcom/amap/api/location/AMapLocationListener;

    return-void
.end method

.method private aP()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/k;->Z:Lcom/amap/api/location/AMapLocationClient;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setWifiActiveScan(Z)V

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setMockEnable(Z)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v1, p0, Lcom/xiaomi/account/ui/k;->Z:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/k;->Z:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/xiaomi/account/ui/k;->aa:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    return-void
.end method

.method private aQ(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/k;->dm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/account/ui/k;->dm:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/k;->dd:Landroid/view/View;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0c0105

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/k;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic aR(Lcom/xiaomi/account/ui/k;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/k;->Y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aS(Lcom/xiaomi/account/ui/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/k;->Y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic aT(Lcom/xiaomi/account/ui/k;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/k;->aQ(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected aA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Lcom/xiaomi/account/ui/l;

    invoke-direct {v1}, Lcom/xiaomi/account/ui/l;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/k;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "selected_province"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "selected_province_zip_code"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/xiaomi/account/ui/l;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/k;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Lcom/xiaomi/passport/utils/r;->Ez(Landroid/app/Activity;Landroid/app/Fragment;ZI)V

    return-void
.end method

.method protected ay()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/k;->dg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/xiaomi/account/task/r;

    invoke-direct {v0}, Lcom/xiaomi/account/task/r;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/k;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c006f

    invoke-virtual {p0, v2}, Lcom/xiaomi/account/ui/k;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/r;->kF(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/xiaomi/account/task/r;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaomi/account/task/r;->kG(Z)Lcom/xiaomi/account/task/r;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/aD;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/aD;-><init>(Lcom/xiaomi/account/ui/k;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/r;->kD(Ljava/lang/Runnable;)Lcom/xiaomi/account/task/r;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/aE;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/aE;-><init>(Lcom/xiaomi/account/ui/k;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/r;->kE(Ljava/lang/Runnable;)Lcom/xiaomi/account/task/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/r;->build()Lcom/xiaomi/account/task/q;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/k;->dh:Lcom/xiaomi/account/task/q;

    iget-object v0, p0, Lcom/xiaomi/account/ui/k;->dh:Lcom/xiaomi/account/task/q;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/q;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected az()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/k;->de:Landroid/widget/TextView;

    const v1, 0x7f0c0106

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/k;->dm:Landroid/widget/TextView;

    const v1, 0x7f0c0104

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/k;->dd:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/k;->dd:Landroid/view/View;

    new-instance v1, Lcom/xiaomi/account/ui/aC;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/aC;-><init>(Lcom/xiaomi/account/ui/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/xiaomi/account/ui/L;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/k;->aP()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/k;->Z:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/k;->Z:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/k;->Z:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    iput-object v1, p0, Lcom/xiaomi/account/ui/k;->aa:Lcom/amap/api/location/AMapLocationListener;

    iput-object v1, p0, Lcom/xiaomi/account/ui/k;->Z:Lcom/amap/api/location/AMapLocationClient;

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/account/ui/L;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/account/ui/L;->onStart()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/k;->Z:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/k;->Z:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/k;->Z:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/k;->Z:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/account/ui/L;->onStop()V

    return-void
.end method
