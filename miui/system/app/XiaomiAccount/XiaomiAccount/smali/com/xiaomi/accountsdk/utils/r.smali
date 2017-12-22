.class public Lcom/xiaomi/accountsdk/utils/r;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile ZC:Lcom/xiaomi/accountsdk/utils/l;

.field private static final ZD:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/xiaomi/accountsdk/utils/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/r;->ZD:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aij(Lcom/xiaomi/accountsdk/utils/s;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/xiaomi/accountsdk/utils/r;->ZD:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static aik()Lcom/xiaomi/accountsdk/utils/l;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/r;->ZC:Lcom/xiaomi/accountsdk/utils/l;

    return-object v0
.end method

.method public static ail()V
    .locals 2

    sget-object v0, Lcom/xiaomi/accountsdk/utils/r;->ZD:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/utils/s;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/utils/s;->aio()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static aim(Lcom/xiaomi/accountsdk/utils/s;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/r;->ZD:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static ain(Lcom/xiaomi/accountsdk/utils/l;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/accountsdk/utils/r;->ZC:Lcom/xiaomi/accountsdk/utils/l;

    return-void
.end method
