.class final Lcom/loc/aM;
.super Ljava/util/TimerTask;
.source "Unknown"


# instance fields
.field private synthetic anX:Lcom/loc/r;


# direct methods
.method constructor <init>(Lcom/loc/r;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/aM;->anX:Lcom/loc/r;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/loc/aS;->aoG:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/aM;->anX:Lcom/loc/r;

    iget-object v0, v0, Lcom/loc/r;->akE:Lcom/loc/aS;

    invoke-static {v0}, Lcom/loc/aS;->aBw(Lcom/loc/aS;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/aM;->anX:Lcom/loc/r;

    iget-object v0, v0, Lcom/loc/r;->akE:Lcom/loc/aS;

    iget-object v1, p0, Lcom/loc/aM;->anX:Lcom/loc/r;

    iget-object v1, v1, Lcom/loc/r;->akE:Lcom/loc/aS;

    invoke-static {v1}, Lcom/loc/aS;->aBw(Lcom/loc/aS;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/aS;->aBA(Lcom/loc/aS;Landroid/net/wifi/WifiManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-void
.end method
