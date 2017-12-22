.class final Lokio/t;
.super Ljava/lang/Thread;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/t;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :cond_0
    :goto_0
    :try_start_0
    # invokes: Lokio/g;->awaitTimeout()Lokio/g;
    invoke-static {}, Lokio/g;->access$000()Lokio/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokio/g;->timedOut()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
