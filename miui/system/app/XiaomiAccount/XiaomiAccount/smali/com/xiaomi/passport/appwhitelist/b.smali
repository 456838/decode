.class public Lcom/xiaomi/passport/appwhitelist/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final KA:Lcom/xiaomi/passport/appwhitelist/b;

.field public static final KB:Lcom/xiaomi/passport/appwhitelist/b;

.field public static final Kv:Lcom/xiaomi/passport/appwhitelist/b;

.field public static final Kw:Lcom/xiaomi/passport/appwhitelist/b;

.field public static final Kx:Lcom/xiaomi/passport/appwhitelist/b;

.field public static final Ky:Lcom/xiaomi/passport/appwhitelist/b;

.field public static final Kz:Lcom/xiaomi/passport/appwhitelist/b;


# instance fields
.field public final KC:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

.field private final latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/b;

    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KS:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/appwhitelist/b;-><init>(Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;)V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/b;->Kw:Lcom/xiaomi/passport/appwhitelist/b;

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/b;

    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KU:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/appwhitelist/b;-><init>(Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;)V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/b;->KB:Lcom/xiaomi/passport/appwhitelist/b;

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/b;

    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KT:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/appwhitelist/b;-><init>(Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;)V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/b;->Ky:Lcom/xiaomi/passport/appwhitelist/b;

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/b;

    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KX:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/appwhitelist/b;-><init>(Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;)V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/b;->KA:Lcom/xiaomi/passport/appwhitelist/b;

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/b;

    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KV:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/appwhitelist/b;-><init>(Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;)V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/b;->Kx:Lcom/xiaomi/passport/appwhitelist/b;

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/b;

    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KW:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/appwhitelist/b;-><init>(Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;)V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/b;->Kz:Lcom/xiaomi/passport/appwhitelist/b;

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/b;

    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KR:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/appwhitelist/b;-><init>(Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;)V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/b;->Kv:Lcom/xiaomi/passport/appwhitelist/b;

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;)V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/passport/appwhitelist/b;-><init>(Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/appwhitelist/b;->KC:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    iput-object p2, p0, Lcom/xiaomi/passport/appwhitelist/b;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;Ljava/util/concurrent/CountDownLatch;Lcom/xiaomi/passport/appwhitelist/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/appwhitelist/b;-><init>(Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public NZ()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/b;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method
