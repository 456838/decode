.class public abstract Lcom/xiaomi/phonenum/c/j;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract aoh(Lcom/xiaomi/phonenum/c/d;)Lcom/xiaomi/phonenum/c/n;
.end method

.method public aol()Lcom/xiaomi/phonenum/c/n;
    .locals 1

    new-instance v0, Lcom/xiaomi/phonenum/c/i;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/c/i;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/c/i;->build()Lcom/xiaomi/phonenum/c/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/phonenum/c/j;->aoh(Lcom/xiaomi/phonenum/c/d;)Lcom/xiaomi/phonenum/c/n;

    move-result-object v0

    return-object v0
.end method
