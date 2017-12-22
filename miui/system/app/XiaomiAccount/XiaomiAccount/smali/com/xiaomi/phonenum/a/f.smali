.class abstract Lcom/xiaomi/phonenum/a/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/xiaomi/phonenum/a/s;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/xiaomi/phonenum/a/s;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic adx:Lcom/xiaomi/phonenum/a/m;


# direct methods
.method private constructor <init>(Lcom/xiaomi/phonenum/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/a/f;->adx:Lcom/xiaomi/phonenum/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/phonenum/a/m;Lcom/xiaomi/phonenum/a/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/a/f;-><init>(Lcom/xiaomi/phonenum/a/m;)V

    return-void
.end method


# virtual methods
.method public abstract hasNext()Z
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/xiaomi/phonenum/a/s;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public abstract next()Lcom/xiaomi/phonenum/a/s;
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/phonenum/a/f;->next()Lcom/xiaomi/phonenum/a/s;

    move-result-object v0

    return-object v0
.end method

.method public abstract remove()V
.end method
