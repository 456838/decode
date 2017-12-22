.class public Lcom/xiaomi/passport/LocalFeatures/b;
.super Lcom/xiaomi/passport/ui/s;
.source ""


# instance fields
.field private CA:Lcom/xiaomi/passport/ui/E;

.field private Cz:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/s;-><init>()V

    return-void
.end method

.method private HC(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->Cz:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->Cz:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;->Hy(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/LocalFeatures/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private HD(Lcom/xiaomi/passport/data/d;)V
    .locals 4

    const/4 v1, 0x5

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v0, "loginResult is null"

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->HC(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/data/d;->yR()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "sts_url"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "booleanResult"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/LocalFeatures/b;->uQ(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/LocalFeatures/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/passport/data/d;->yT()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0c008a

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->HC(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0c0093

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->HC(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0c008f

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->HC(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->HC(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0c0094

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->HC(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0c0095

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->HC(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0c008c

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->HC(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1}, Lcom/xiaomi/passport/data/d;->yS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->uN(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p1}, Lcom/xiaomi/passport/data/d;->yW()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->qF:Landroid/widget/EditText;

    const v1, 0x7f0c008e

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/LocalFeatures/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/passport/data/d;->yW()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->mStep1Token:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/passport/data/d;->yU()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->qt:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {p0}, Lcom/xiaomi/passport/LocalFeatures/b;->uZ()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p1}, Lcom/xiaomi/passport/data/d;->yV()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->HE(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic HF(Lcom/xiaomi/passport/LocalFeatures/b;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->qt:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    return-object v0
.end method

.method static synthetic HG(Lcom/xiaomi/passport/LocalFeatures/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->mStep1Token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic HH(Lcom/xiaomi/passport/LocalFeatures/b;Lcom/xiaomi/passport/data/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/LocalFeatures/b;->HD(Lcom/xiaomi/passport/data/d;)V

    return-void
.end method


# virtual methods
.method protected HE(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/LocalFeatures/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/LocalFeatures/b;->qy:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;->HA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/LocalFeatures/b;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/passport/ui/s;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sts_url"

    const-string/jumbo v2, "sts_url"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "booleanResult"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->uQ(Landroid/os/Bundle;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/passport/ui/s;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/xiaomi/passport/ui/s;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/LocalFeatures/b;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "GetStsUrlFragment"

    const-string/jumbo v1, "fragment arguments should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "local_feature_response"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;

    iput-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->Cz:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;

    const-string/jumbo v0, "password"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "notification_url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/LocalFeatures/b;->qp:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/xiaomi/passport/LocalFeatures/b;->qv:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v2, v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/xiaomi/passport/LocalFeatures/b;->qv:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setSelection(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->mCaptchaUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0c0055

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->qC:Ljava/lang/String;

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/LocalFeatures/b;->HE(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/passport/LocalFeatures/b;->uZ()V

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method protected uQ(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const-string/jumbo v0, "cancelled"

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/passport/LocalFeatures/b;->HC(ILjava/lang/String;)V

    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/xiaomi/passport/LocalFeatures/b;->Cz:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->Cz:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->Cz:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;->Hx(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected uR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->CA:Lcom/xiaomi/passport/ui/E;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->CA:Lcom/xiaomi/passport/ui/E;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/E;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/LocalFeatures/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/passport/LocalFeatures/c;-><init>(Lcom/xiaomi/passport/LocalFeatures/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/LocalFeatures/c;)V

    iput-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->CA:Lcom/xiaomi/passport/ui/E;

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->CA:Lcom/xiaomi/passport/ui/E;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/E;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method protected uS(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->CA:Lcom/xiaomi/passport/ui/E;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->CA:Lcom/xiaomi/passport/ui/E;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/E;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/LocalFeatures/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/passport/LocalFeatures/d;-><init>(Lcom/xiaomi/passport/LocalFeatures/b;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/xiaomi/passport/LocalFeatures/d;)V

    iput-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->CA:Lcom/xiaomi/passport/ui/E;

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/b;->CA:Lcom/xiaomi/passport/ui/E;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/E;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method
