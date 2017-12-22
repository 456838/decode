.class public Lcom/xiaomi/passport/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final synthetic Le:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OK(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/accountmanager/f;->CH()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "com.xiaomi.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    goto :goto_0
.end method

.method public static OL(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/accountmanager/f;->CH()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "com.xiaomi.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    goto :goto_0
.end method

.method public static OM(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x2

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-static {}, Lcom/xiaomi/passport/a;->ON()[I

    move-result-object v2

    invoke-virtual {p2}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this should not be happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p0}, Lcom/xiaomi/passport/a;->OL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "extra_account"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_update_type"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/accountmanager/f;->CH()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/xiaomi/passport/a;->OK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/xiaomi/passport/a;->OK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    invoke-static {p0}, Lcom/xiaomi/passport/a;->OL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_4
    invoke-static {p0}, Lcom/xiaomi/passport/a;->OK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static synthetic ON()[I
    .locals 3

    sget-object v0, Lcom/xiaomi/passport/a;->Le:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/a;->Le:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->values()[Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Lg:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Lh:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Li:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Lj:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Lk:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/xiaomi/passport/a;->Le:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method
