.class Lcom/squareup/okhttp/internal/framed/FramedConnection$5;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source ""


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

.field final synthetic val$inFinished:Z

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$streamId:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$requestHeaders:Ljava/util/List;

    iput-boolean p6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushObserver:Lcom/squareup/okhttp/internal/framed/PushObserver;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2500(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Lcom/squareup/okhttp/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$streamId:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$requestHeaders:Ljava/util/List;

    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$inFinished:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/framed/PushObserver;->onHeaders(ILjava/util/List;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    if-eqz v0, :cond_2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/squareup/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2600(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$streamId:I

    sget-object v3, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-interface {v1, v2, v3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$inFinished:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method
