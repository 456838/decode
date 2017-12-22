.class Lcom/loc/al;
.super Ljava/util/TimerTask;
.source ""


# instance fields
.field final synthetic a:I

.field final synthetic amX:Lcom/loc/X;


# direct methods
.method constructor <init>(Lcom/loc/X;I)V
    .locals 0

    iput-object p1, p0, Lcom/loc/al;->amX:Lcom/loc/X;

    iput p2, p0, Lcom/loc/al;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/loc/al;->amX:Lcom/loc/X;

    invoke-static {v4}, Lcom/loc/X;->axe(Lcom/loc/X;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/loc/al;->amX:Lcom/loc/X;

    invoke-static {v0}, Lcom/loc/X;->axc(Lcom/loc/X;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/al;->amX:Lcom/loc/X;

    invoke-static {v0}, Lcom/loc/X;->axg(Lcom/loc/X;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/loc/al;->amX:Lcom/loc/X;

    iget v1, p0, Lcom/loc/al;->a:I

    invoke-static {v0, v1}, Lcom/loc/X;->axf(Lcom/loc/X;I)V

    goto :goto_1
.end method
