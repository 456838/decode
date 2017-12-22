.class final Lcom/xiaomi/passport/v2/utils/m;
.super Lcom/xiaomi/passport/uicontroller/w;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/w",
        "<",
        "Lcom/xiaomi/phonenum/bean/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic GB:Lcom/xiaomi/passport/v2/utils/c;

.field final synthetic GC:I

.field final synthetic GD:Lcom/xiaomi/passport/v2/utils/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/c;ILcom/xiaomi/passport/v2/utils/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/m;->GB:Lcom/xiaomi/passport/v2/utils/c;

    iput p2, p0, Lcom/xiaomi/passport/v2/utils/m;->GC:I

    iput-object p3, p0, Lcom/xiaomi/passport/v2/utils/m;->GD:Lcom/xiaomi/passport/v2/utils/e;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/w;-><init>()V

    return-void
.end method


# virtual methods
.method public Lb(Lcom/xiaomi/passport/uicontroller/v;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Lcom/xiaomi/phonenum/bean/a;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/v;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/phonenum/bean/a;

    iget v1, v0, Lcom/xiaomi/phonenum/bean/a;->errorCode:I

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/accountsdk/account/data/j;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/account/data/j;-><init>()V

    iget-object v2, v0, Lcom/xiaomi/phonenum/bean/a;->abK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/j;->WN(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/j;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaomi/phonenum/bean/a;->abL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/j;->WO(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/j;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaomi/phonenum/bean/a;->abN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/j;->WK(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/j;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/passport/v2/utils/m;->GC:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/j;->WP(I)Lcom/xiaomi/accountsdk/account/data/j;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaomi/phonenum/bean/a;->abQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/j;->WL(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/j;

    move-result-object v1

    iget-object v0, v0, Lcom/xiaomi/phonenum/bean/a;->abR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/account/data/j;->WM(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/j;->build()Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/m;->GD:Lcom/xiaomi/passport/v2/utils/e;

    invoke-interface {v1, v0}, Lcom/xiaomi/passport/v2/utils/e;->Ld(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/m;->GB:Lcom/xiaomi/passport/v2/utils/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/c;->Lt(Lcom/xiaomi/passport/v2/utils/c;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v1, "ActivatorPhoneController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "obtainAndVerifyPhoneNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/m;->GD:Lcom/xiaomi/passport/v2/utils/e;

    invoke-interface {v0}, Lcom/xiaomi/passport/v2/utils/e;->Lc()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "ActivatorPhoneController"

    const-string/jumbo v2, "obtainAndVerifyPhoneNum"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/m;->GD:Lcom/xiaomi/passport/v2/utils/e;

    invoke-interface {v0}, Lcom/xiaomi/passport/v2/utils/e;->Lc()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/m;->GB:Lcom/xiaomi/passport/v2/utils/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/c;->Lt(Lcom/xiaomi/passport/v2/utils/c;)V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "ActivatorPhoneController"

    const-string/jumbo v2, "obtainAndVerifyPhoneNum"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/m;->GD:Lcom/xiaomi/passport/v2/utils/e;

    invoke-interface {v0}, Lcom/xiaomi/passport/v2/utils/e;->Lc()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/m;->GB:Lcom/xiaomi/passport/v2/utils/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/c;->Lt(Lcom/xiaomi/passport/v2/utils/c;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/m;->GB:Lcom/xiaomi/passport/v2/utils/c;

    invoke-static {v1}, Lcom/xiaomi/passport/v2/utils/c;->Lt(Lcom/xiaomi/passport/v2/utils/c;)V

    throw v0
.end method
