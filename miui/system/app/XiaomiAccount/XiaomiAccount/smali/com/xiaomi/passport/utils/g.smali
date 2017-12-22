.class public Lcom/xiaomi/passport/utils/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zJ:Lcom/xiaomi/passport/utils/u;

.field private final zK:Lcom/xiaomi/passport/utils/h;

.field private final zL:Ljava/lang/Runnable;

.field private final zM:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/xiaomi/passport/utils/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/passport/utils/i;->Du(Lcom/xiaomi/passport/utils/i;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/utils/g;->zM:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaomi/passport/utils/i;->Dt(Lcom/xiaomi/passport/utils/i;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/utils/g;->zL:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaomi/passport/utils/i;->Ds(Lcom/xiaomi/passport/utils/i;)Lcom/xiaomi/passport/utils/u;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/utils/g;->zJ:Lcom/xiaomi/passport/utils/u;

    new-instance v0, Lcom/xiaomi/passport/utils/h;

    iget-object v1, p0, Lcom/xiaomi/passport/utils/g;->zJ:Lcom/xiaomi/passport/utils/u;

    iget-object v1, v1, Lcom/xiaomi/passport/utils/u;->AB:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/utils/h;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/passport/utils/g;->zK:Lcom/xiaomi/passport/utils/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/utils/i;Lcom/xiaomi/passport/utils/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/utils/g;-><init>(Lcom/xiaomi/passport/utils/i;)V

    return-void
.end method


# virtual methods
.method Dh()Lcom/xiaomi/passport/utils/u;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/g;->zJ:Lcom/xiaomi/passport/utils/u;

    return-object v0
.end method

.method public Di()V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/g;->Dh()Lcom/xiaomi/passport/utils/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/utils/u;->EY()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/g;->Dk()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/g;->Dl()Lcom/xiaomi/passport/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/utils/h;->Dm()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/g;->Dj()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/g;->Dh()Lcom/xiaomi/passport/utils/u;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/utils/g;->zL:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/utils/u;->EZ(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/g;->Dl()Lcom/xiaomi/passport/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/utils/h;->Do()V

    goto :goto_0
.end method

.method Dj()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/g;->zL:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/utils/g;->zL:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method Dk()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/g;->zM:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/utils/g;->zM:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method Dl()Lcom/xiaomi/passport/utils/h;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/g;->zK:Lcom/xiaomi/passport/utils/h;

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/g;->Dh()Lcom/xiaomi/passport/utils/u;

    move-result-object v0

    iget v0, v0, Lcom/xiaomi/passport/utils/u;->AC:I

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/g;->Dk()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/g;->Dj()V

    goto :goto_0
.end method
