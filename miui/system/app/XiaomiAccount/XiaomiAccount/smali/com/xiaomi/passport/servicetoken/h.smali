.class public final Lcom/xiaomi/passport/servicetoken/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Ik:Lcom/xiaomi/passport/servicetoken/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/h;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/h;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/h;->Ik:Lcom/xiaomi/passport/servicetoken/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Mz()Lcom/xiaomi/passport/servicetoken/h;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/servicetoken/h;->Ik:Lcom/xiaomi/passport/servicetoken/h;

    return-object v0
.end method


# virtual methods
.method public Mw(Lcom/xiaomi/passport/servicetoken/c;)Lcom/xiaomi/passport/servicetoken/a;
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/v;

    invoke-direct {v0, p1}, Lcom/xiaomi/passport/servicetoken/v;-><init>(Lcom/xiaomi/passport/servicetoken/c;)V

    return-object v0
.end method

.method public Mx()Lcom/xiaomi/passport/servicetoken/c;
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/servicetoken/x;

    new-instance v1, Lcom/xiaomi/passport/servicetoken/g;

    invoke-direct {v1}, Lcom/xiaomi/passport/servicetoken/g;-><init>()V

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/x;-><init>(Lcom/xiaomi/passport/servicetoken/g;)V

    return-object v0
.end method

.method public My()Lcom/xiaomi/passport/servicetoken/a;
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/t;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/t;-><init>()V

    return-object v0
.end method
