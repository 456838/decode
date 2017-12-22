.class public Lcom/xiaomi/phonenum/a/j;
.super Lcom/xiaomi/phonenum/a/n;
.source ""


# instance fields
.field private final adI:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "server"

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/phonenum/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/xiaomi/phonenum/a/j;->adI:Ljava/lang/String;

    return-void
.end method

.method static synthetic any(Lcom/xiaomi/phonenum/a/j;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/j;->adI:Ljava/lang/String;

    return-object v0
.end method
