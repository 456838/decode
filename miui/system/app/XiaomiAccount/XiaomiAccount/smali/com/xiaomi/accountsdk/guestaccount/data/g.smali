.class Lcom/xiaomi/accountsdk/guestaccount/data/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final Oe:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/g;->Oe:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "srcBundle == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/g;->Oe:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/g;->Oe:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/data/g;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public final TQ()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/g;->Oe:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
