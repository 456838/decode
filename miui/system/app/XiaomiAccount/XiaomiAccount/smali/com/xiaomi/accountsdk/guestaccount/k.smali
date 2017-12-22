.class public abstract Lcom/xiaomi/accountsdk/guestaccount/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/accountsdk/guestaccount/h;


# static fields
.field private static final synthetic Ow:[I


# instance fields
.field protected final Ou:Landroid/content/Context;

.field private final Ov:Lcom/xiaomi/accountsdk/guestaccount/l;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/q;->OF:Lcom/xiaomi/accountsdk/guestaccount/l;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/k;->Ov:Lcom/xiaomi/accountsdk/guestaccount/l;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/k;->Ou:Landroid/content/Context;

    return-void
.end method

.method public static Uf(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)Lcom/xiaomi/accountsdk/guestaccount/h;
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "policy == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Lcom/xiaomi/accountsdk/guestaccount/k;->Uj()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p0, p2}, Lcom/xiaomi/accountsdk/guestaccount/s;->Uq(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)Lcom/xiaomi/accountsdk/guestaccount/s;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0}, Lcom/xiaomi/accountsdk/guestaccount/p;->Ul(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/p;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/xiaomi/accountsdk/guestaccount/p;->Um(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p2}, Lcom/xiaomi/accountsdk/guestaccount/s;->Uq(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)Lcom/xiaomi/accountsdk/guestaccount/s;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lcom/xiaomi/accountsdk/utils/g;->aht(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/xiaomi/accountsdk/utils/o;

    const/16 v1, 0x8

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/o;-><init>(II)V

    invoke-static {v0, v4}, Lcom/xiaomi/accountsdk/utils/o;->ahZ(Lcom/xiaomi/accountsdk/utils/o;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0, p2}, Lcom/xiaomi/accountsdk/guestaccount/s;->Uq(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)Lcom/xiaomi/accountsdk/guestaccount/s;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {v4}, Lcom/xiaomi/accountsdk/utils/g;->ahs(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/xiaomi/accountsdk/utils/n;

    const/4 v1, 0x6

    const/16 v2, 0xb

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/n;-><init>(III)V

    invoke-static {v0, v4}, Lcom/xiaomi/accountsdk/utils/n;->ahV(Lcom/xiaomi/accountsdk/utils/n;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, p2}, Lcom/xiaomi/accountsdk/guestaccount/s;->Uq(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)Lcom/xiaomi/accountsdk/guestaccount/s;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/xiaomi/accountsdk/guestaccount/p;->Ul(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/p;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static synthetic Uj()[I
    .locals 3

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/k;->Ow:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/k;->Ow:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;->values()[Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;->Ob:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;->Oc:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;->Od:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/k;->Ow:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final TX(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sid == null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/f;-><init>()V

    invoke-virtual {v0, p3}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TN(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TP(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;

    move-result-object v0

    const-string/jumbo v1, "0.0.4"

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TO(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/u;

    invoke-direct {v1, p1}, Lcom/xiaomi/accountsdk/guestaccount/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/k;->Ug(Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object v0

    return-object v0
.end method

.method public final TY()Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/f;-><init>()V

    const-string/jumbo v1, "0.0.4"

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TO(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/guestaccount/k;->Uh(Lcom/xiaomi/accountsdk/guestaccount/data/f;)Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object v0

    return-object v0
.end method

.method public final Uc(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sid == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/f;-><init>()V

    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TN(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TP(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;

    move-result-object v0

    const-string/jumbo v1, "0.0.4"

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TO(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/u;

    invoke-direct {v1, p1}, Lcom/xiaomi/accountsdk/guestaccount/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/k;->Ui(Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object v0

    return-object v0
.end method

.method protected abstract Ug(Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
.end method

.method protected abstract Uh(Lcom/xiaomi/accountsdk/guestaccount/data/f;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
.end method

.method protected abstract Ui(Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
.end method
