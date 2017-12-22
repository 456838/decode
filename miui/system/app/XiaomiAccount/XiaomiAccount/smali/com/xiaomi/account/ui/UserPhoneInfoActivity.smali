.class public Lcom/xiaomi/account/ui/UserPhoneInfoActivity;
.super Lmiui/app/Activity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final synthetic at:[I


# instance fields
.field private ae:Landroid/accounts/Account;

.field private af:Landroid/widget/TextView;

.field private ag:Landroid/widget/TextView;

.field private ah:Z

.field private ai:Landroid/view/View;

.field private aj:Landroid/widget/SimpleAdapter;

.field private ak:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private al:Landroid/widget/ListView;

.field private am:Lcom/xiaomi/account/task/h;

.field private an:Ljava/lang/String;

.field private ao:Lcom/xiaomi/account/task/s;

.field private ap:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

.field private aq:Landroid/content/IntentFilter;

.field private ar:Landroid/content/BroadcastReceiver;

.field private as:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ah:Z

    new-instance v0, Lcom/xiaomi/account/ui/aF;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/ui/aF;-><init>(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ar:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private aW(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    const v1, 0x7f0c0114

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030059

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v3

    const v0, 0x7f1000bb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f100033

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v4, 0x7f1000bc

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-direct {p0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->aZ()Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    new-instance v4, Lcom/xiaomi/account/ui/aH;

    invoke-direct {v4, p0, v0, v1, v3}, Lcom/xiaomi/account/ui/aH;-><init>(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;Landroid/widget/Button;Landroid/widget/Button;Lmiui/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3
.end method

.method private aX(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->am:Lcom/xiaomi/account/task/h;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ae:Landroid/accounts/Account;

    const-string/jumbo v2, "identity_auth_token"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/task/h;

    new-instance v2, Lcom/xiaomi/account/ui/aJ;

    invoke-direct {v2, p0}, Lcom/xiaomi/account/ui/aJ;-><init>(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;)V

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/xiaomi/account/task/h;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/account/task/i;)V

    iput-object v1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->am:Lcom/xiaomi/account/task/h;

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->am:Lcom/xiaomi/account/task/h;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/h;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private aY(Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ao:Lcom/xiaomi/account/task/s;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ap:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ae:Landroid/accounts/Account;

    const-string/jumbo v2, "identity_auth_token"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/task/s;

    new-instance v2, Lcom/xiaomi/account/ui/aI;

    invoke-direct {v2, p0}, Lcom/xiaomi/account/ui/aI;-><init>(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;)V

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/xiaomi/account/task/s;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;Lcom/xiaomi/account/task/t;)V

    iput-object v1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ao:Lcom/xiaomi/account/task/s;

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ao:Lcom/xiaomi/account/task/s;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/s;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private aZ()Lorg/json/JSONArray;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ae:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_user_phone_list"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "UserPhoneInfoActivity"

    const-string/jumbo v1, "JSONException"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private ba()V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ak:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ak:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->aZ()Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "binded_phone_title"

    const v5, 0x7f0c011d

    invoke-virtual {p0, v5}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "binded_phone_number"

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ak:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private bb()V
    .locals 3

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->aZ()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const v2, 0x7f0c019c

    const v0, 0x7f0c0111

    :goto_0
    if-ne v0, v1, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    iget-object v1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->af:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ag:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ba()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->aj:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    const v0, 0x7f0c011e

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private bc(Lcom/xiaomi/accountsdk/account/data/BindingType;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->an:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->as:Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/xiaomi/account/ui/BindPhoneActivity;->gh(Lmiui/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/BindingType;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private bd()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ap:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    if-nez v1, :cond_0

    const-string/jumbo v0, "UserPhoneInfoActivity"

    const-string/jumbo v1, "mIdentityAuthReason is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->bj()[I

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ap:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v1

    const-string/jumbo v2, "user_detail_info"

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_0
    const-string/jumbo v0, "delete_phone_identity_success"

    iget-object v1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->as:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->aX(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "add_phone_identity_success"

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/BindingType;->PS:Lcom/xiaomi/accountsdk/account/data/BindingType;

    invoke-direct {p0, v1}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->bc(Lcom/xiaomi/accountsdk/account/data/BindingType;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "replace_phone_identity_success"

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/BindingType;->PV:Lcom/xiaomi/accountsdk/account/data/BindingType;

    invoke-direct {p0, v1}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->bc(Lcom/xiaomi/accountsdk/account/data/BindingType;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic be(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;Lcom/xiaomi/account/task/h;)Lcom/xiaomi/account/task/h;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->am:Lcom/xiaomi/account/task/h;

    return-object p1
.end method

.method static synthetic bf(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;Lcom/xiaomi/account/task/s;)Lcom/xiaomi/account/task/s;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ao:Lcom/xiaomi/account/task/s;

    return-object p1
.end method

.method static synthetic bg(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->aY(Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V

    return-void
.end method

.method static synthetic bh(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->bb()V

    return-void
.end method

.method static synthetic bi(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->bd()V

    return-void
.end method

.method private static synthetic bj()[I
    .locals 3

    sget-object v0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->at:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->at:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->values()[Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->QV:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->QW:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->QX:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->QY:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->QZ:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->Ra:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->Rb:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->at:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x2711

    if-ne p1, v1, :cond_2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    const-string/jumbo v0, "notification_auth_end"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ae:Landroid/accounts/Account;

    const-string/jumbo v3, "identity_auth_token"

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;->Th:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->bd()V

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x2712

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ah:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qr(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ap:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    sget-object v2, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->QV:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    if-ne v1, v2, :cond_5

    const-string/jumbo v0, "add_phone_success"

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v1

    const-string/jumbo v2, "user_detail_info"

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "acc_phone_list"

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ae:Landroid/accounts/Account;

    const-string/jumbo v4, "acc_user_phone_list"

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2, v0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->finish()V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ap:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    sget-object v2, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->QY:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    if-ne v1, v2, :cond_3

    const-string/jumbo v0, "replace_phone_success"

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ai:Landroid/view/View;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    const-string/jumbo v1, "user_detail_info"

    const-string/jumbo v2, "add_phone"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->QV:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->aY(Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f100014

    const v6, 0x1020016

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f03005b

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->setContentView(I)V

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ae:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ae:Landroid/accounts/Account;

    if-nez v0, :cond_1

    const-string/jumbo v0, "UserPhoneInfoActivity"

    const-string/jumbo v1, "no xiaomi account"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "extra_binding_phone_num"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->an:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->an:Ljava/lang/String;

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ah:Z

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ba()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ak:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iput-boolean v3, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ah:Z

    :cond_4
    iget-boolean v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ah:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->QV:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->aY(Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V

    :cond_5
    const v0, 0x7f1000bf

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ai:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ai:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ai:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->af:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ai:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ag:Landroid/widget/TextView;

    const v0, 0x7f1000be

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->al:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->al:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ak:Ljava/util/List;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const-string/jumbo v1, "binded_phone_title"

    aput-object v1, v4, v5

    const-string/jumbo v1, "binded_phone_number"

    aput-object v1, v4, v3

    filled-new-array {v6, v7}, [I

    move-result-object v5

    const v3, 0x7f030006

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->aj:Landroid/widget/SimpleAdapter;

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->al:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->aj:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->aq:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->aq:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.xiaomi.action.XIAOMI_USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->as:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->aW(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/aG;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/aG;-><init>(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ao:Lcom/xiaomi/account/task/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ao:Lcom/xiaomi/account/task/s;

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/task/s;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ao:Lcom/xiaomi/account/task/s;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->am:Lcom/xiaomi/account/task/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->am:Lcom/xiaomi/account/task/h;

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/task/h;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->am:Lcom/xiaomi/account/task/h;

    :cond_1
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->al:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "binded_phone_number"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->as:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->showDialog(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ar:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/a/a;->sB()V

    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->bb()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->ar:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->aq:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qr(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    const-string/jumbo v1, "UserPhoneInfoActivity"

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/a/a;->sC(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
