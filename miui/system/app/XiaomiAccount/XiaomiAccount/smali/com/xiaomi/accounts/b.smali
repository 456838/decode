.class Lcom/xiaomi/accounts/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final Ml:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private Mm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final Mn:Ljava/lang/Object;

.field private final Mo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final Mp:Lcom/xiaomi/accounts/e;

.field private final Mq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Mr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final Ms:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accounts/b;->Mo:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accounts/b;->Mq:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accounts/b;->Mn:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accounts/b;->Ml:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accounts/b;->Mr:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accounts/b;->Mm:Ljava/util/HashMap;

    iput p2, p0, Lcom/xiaomi/accounts/b;->Ms:I

    iget-object v1, p0, Lcom/xiaomi/accounts/b;->Mn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/xiaomi/accounts/e;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/accounts/e;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaomi/accounts/b;->Mp:Lcom/xiaomi/accounts/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic Rn(Lcom/xiaomi/accounts/b;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accounts/b;->Ml:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic Ro(Lcom/xiaomi/accounts/b;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accounts/b;->Mm:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic Rp(Lcom/xiaomi/accounts/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accounts/b;->Mn:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic Rq(Lcom/xiaomi/accounts/b;)Lcom/xiaomi/accounts/e;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accounts/b;->Mp:Lcom/xiaomi/accounts/e;

    return-object v0
.end method

.method static synthetic Rr(Lcom/xiaomi/accounts/b;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accounts/b;->Mq:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic Rs(Lcom/xiaomi/accounts/b;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accounts/b;->Mr:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic Rt(Lcom/xiaomi/accounts/b;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/accounts/b;->Ms:I

    return v0
.end method
