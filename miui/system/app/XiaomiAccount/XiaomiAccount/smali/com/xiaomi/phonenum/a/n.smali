.class public Lcom/xiaomi/phonenum/a/n;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final adU:Ljava/lang/String;

.field private final adV:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/phonenum/a/n;->adU:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/phonenum/a/n;->adV:Ljava/lang/String;

    return-void
.end method

.method static synthetic anI(Lcom/xiaomi/phonenum/a/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/n;->adU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic anJ(Lcom/xiaomi/phonenum/a/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/n;->adV:Ljava/lang/String;

    return-object v0
.end method
