.class public Lcom/xiaomi/passport/utils/p;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final At:Lcom/xiaomi/passport/utils/g;

.field private final Au:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/xiaomi/passport/utils/q;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/passport/utils/q;->Ex(Lcom/xiaomi/passport/utils/q;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/utils/p;->Au:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/passport/utils/v;

    invoke-direct {v0}, Lcom/xiaomi/passport/utils/v;-><init>()V

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/utils/v;->Fc(Ljava/lang/String;)Lcom/xiaomi/passport/utils/v;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/utils/v;->Fd(Ljava/lang/String;)Lcom/xiaomi/passport/utils/v;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/passport/utils/q;->Ev(Lcom/xiaomi/passport/utils/q;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/utils/v;->Fe(Landroid/app/Activity;)Lcom/xiaomi/passport/utils/v;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/passport/utils/q;->Ew(Lcom/xiaomi/passport/utils/q;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/utils/v;->Ff(I)Lcom/xiaomi/passport/utils/v;

    move-result-object v0

    const v1, 0x7f0c0098

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/utils/v;->Fg(I)Lcom/xiaomi/passport/utils/v;

    move-result-object v0

    const v1, 0x7f0c0099

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/utils/v;->Fh(I)Lcom/xiaomi/passport/utils/v;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/utils/v;->Fi(I)Lcom/xiaomi/passport/utils/v;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/utils/v;->Fj(I)Lcom/xiaomi/passport/utils/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/utils/v;->build()Lcom/xiaomi/passport/utils/u;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/utils/i;

    invoke-direct {v1}, Lcom/xiaomi/passport/utils/i;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/p;->Eq()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/utils/i;->Dq(Ljava/lang/Runnable;)Lcom/xiaomi/passport/utils/i;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/p;->Eq()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/utils/i;->Dr(Ljava/lang/Runnable;)Lcom/xiaomi/passport/utils/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/utils/i;->Dp(Lcom/xiaomi/passport/utils/u;)Lcom/xiaomi/passport/utils/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/utils/i;->build()Lcom/xiaomi/passport/utils/g;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/utils/p;->At:Lcom/xiaomi/passport/utils/g;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/utils/q;Lcom/xiaomi/passport/utils/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/utils/p;-><init>(Lcom/xiaomi/passport/utils/q;)V

    return-void
.end method


# virtual methods
.method Ep()Lcom/xiaomi/passport/utils/y;
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/utils/y;

    invoke-direct {v0}, Lcom/xiaomi/passport/utils/y;-><init>()V

    return-object v0
.end method

.method Eq()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/p;->Au:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/utils/p;->Au:Ljava/lang/Runnable;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/utils/A;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/utils/A;-><init>(Lcom/xiaomi/passport/utils/p;)V

    goto :goto_0
.end method

.method Er()Lcom/xiaomi/passport/utils/g;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/p;->At:Lcom/xiaomi/passport/utils/g;

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/p;->Er()Lcom/xiaomi/passport/utils/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/passport/utils/g;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/p;->Ep()Lcom/xiaomi/passport/utils/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/utils/y;->Gc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/p;->Eq()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/p;->Er()Lcom/xiaomi/passport/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/utils/g;->Di()V

    goto :goto_0
.end method
