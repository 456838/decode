.class public Lcom/xiaomi/accountsdk/activate/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static aax:Ljava/lang/String;


# instance fields
.field private aaw:Lcom/xiaomi/accountsdk/activate/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "com.xiaomi.simactivate.service"

    sput-object v0, Lcom/xiaomi/accountsdk/activate/a;->aax:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/activate/c;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/activate/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/activate/a;->aaw:Lcom/xiaomi/accountsdk/activate/c;

    return-void
.end method

.method public static ajT(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/a;
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/activate/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/activate/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public ajQ(IILjava/lang/String;ZLjava/lang/String;I)Lcom/xiaomi/accountsdk/activate/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "I)",
            "Lcom/xiaomi/accountsdk/activate/b",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/accountsdk/activate/a;->ajR(IILjava/lang/String;Ljava/lang/String;IZ)Lcom/xiaomi/accountsdk/activate/b;

    move-result-object v0

    return-object v0
.end method

.method public ajR(IILjava/lang/String;Ljava/lang/String;IZ)Lcom/xiaomi/accountsdk/activate/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ)",
            "Lcom/xiaomi/accountsdk/activate/b",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/accountsdk/activate/a;->aaw:Lcom/xiaomi/accountsdk/activate/c;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/xiaomi/accountsdk/activate/c;->ajW(IIIZ)Lcom/xiaomi/accountsdk/activate/b;

    move-result-object v0

    return-object v0
.end method

.method public ajS(I)Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/activate/a;->ajU(I)Lcom/xiaomi/accountsdk/activate/b;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lcom/xiaomi/accountsdk/activate/b;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/activate/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ActivateManager"

    const-string/jumbo v2, "blockingGetActivateInfo error and return null:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "ActivateManager"

    const-string/jumbo v2, "blockingGetActivateInfo error and return null:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "ActivateManager"

    const-string/jumbo v2, "blockingGetActivateInfo error and return null:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public ajU(I)Lcom/xiaomi/accountsdk/activate/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/xiaomi/accountsdk/activate/b",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/accountsdk/activate/a;->aaw:Lcom/xiaomi/accountsdk/activate/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/activate/c;->ajY(I)Lcom/xiaomi/accountsdk/activate/b;

    move-result-object v0

    return-object v0
.end method

.method public ajV(I)Lcom/xiaomi/accountsdk/activate/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/xiaomi/accountsdk/activate/b",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/accountsdk/activate/a;->aaw:Lcom/xiaomi/accountsdk/activate/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/activate/c;->ajZ(I)Lcom/xiaomi/accountsdk/activate/b;

    move-result-object v0

    return-object v0
.end method
