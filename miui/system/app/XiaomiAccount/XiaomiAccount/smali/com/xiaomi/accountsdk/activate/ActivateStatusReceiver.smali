.class public Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static volatile aaE:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final aaF:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static aaG:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;

.field private static aaH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/accountsdk/activate/l;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic aaI:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/Bundle;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->aaF:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->aaE:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->aaH:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->aaG:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static ake(ILcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;IIIJ)V
    .locals 3

    sget-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->aaF:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->akj()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    sget-object v1, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abf:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "extra_activate_err_code"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string/jumbo v1, "extra_activate_notify_time"

    invoke-virtual {v0, v1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "extra_activate_method"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->aaH:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/activate/l;

    invoke-interface {v1, p0, p1, v0}, Lcom/xiaomi/accountsdk/activate/l;->akK(ILcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_0
    const-string/jumbo v1, "extra_activate_feature_indices"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static akf(Landroid/content/Context;I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/activate/a;->ajT(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/activate/a;->ajS(I)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ActivateStatusReceiver"

    const-string/jumbo v1, "Updating activate info with empty value"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->aaF:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    sget-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->aaE:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "sim_inserted"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "activate_status"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "ActivateStatusReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Updating activate info for sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " inserted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " status="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->aaF:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    sget-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->aaE:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto :goto_0
.end method

.method private static akg(Landroid/content/Context;ILcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;IIIJ)V
    .locals 10

    new-instance v1, Lcom/xiaomi/accountsdk/activate/g;

    move v2, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/accountsdk/activate/g;-><init>(ILandroid/content/Context;Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;IIIJ)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/activate/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic akh(ILcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;IIIJ)V
    .locals 1

    invoke-static/range {p0 .. p6}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->ake(ILcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;IIIJ)V

    return-void
.end method

.method static synthetic aki(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->akf(Landroid/content/Context;I)V

    return-void
.end method

.method private static synthetic akj()[I
    .locals 3

    sget-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->aaI:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->aaI:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->values()[Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->aba:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abb:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abc:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abd:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abe:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abf:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->aaI:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v0, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abd:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    const-string/jumbo v3, "com.xiaomi.action.MICLOUD_SIM_STATE_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v1, "extra_sim_index"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "extra_sim_inserted"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abc:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    move v5, v0

    move v3, v4

    :goto_0
    if-eq v1, v0, :cond_0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->akg(Landroid/content/Context;ILcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;IIIJ)V

    :cond_0
    return-void

    :cond_1
    sget-object v2, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abe:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    move v5, v0

    move v3, v4

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "com.xiaomi.action.ACTIVATE_STATUS_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v1, "extra_sim_index"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "extra_sim_inserted"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v3, "extra_activate_feature_indices"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v5, "extra_activate_err_code"

    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v9, "extra_activate_notify_time"

    invoke-virtual {p2, v9, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v9, "extra_activate_method"

    invoke-virtual {p2, v9, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v2, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abf:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->aba:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abb:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "ActivateStatusReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown action "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v0

    move v3, v4

    move v1, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
