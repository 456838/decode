.class public Lcom/xiaomi/phonenum/a/e;
.super Lcom/xiaomi/phonenum/a/n;
.source ""


# instance fields
.field private final adv:Lcom/xiaomi/phonenum/c/h;

.field private final adw:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/xiaomi/phonenum/c/h;Ljava/lang/String;)V
    .locals 1
    .param p2    # Lcom/xiaomi/phonenum/c/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "data"

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/phonenum/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/xiaomi/phonenum/a/e;->adv:Lcom/xiaomi/phonenum/c/h;

    iput-object p3, p0, Lcom/xiaomi/phonenum/a/e;->adw:Ljava/lang/String;

    return-void
.end method

.method static synthetic anp(Lcom/xiaomi/phonenum/a/e;)Lcom/xiaomi/phonenum/c/h;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/e;->adv:Lcom/xiaomi/phonenum/c/h;

    return-object v0
.end method

.method static synthetic anq(Lcom/xiaomi/phonenum/a/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/e;->adw:Ljava/lang/String;

    return-object v0
.end method
