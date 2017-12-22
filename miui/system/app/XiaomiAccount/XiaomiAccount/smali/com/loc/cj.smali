.class Lcom/loc/cj;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic arY:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/cj;->arY:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/cj;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/cj;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v1, Lcom/loc/bX;

    iget-object v0, p0, Lcom/loc/cj;->arY:Landroid/content/Context;

    invoke-static {}, Lcom/loc/cu;->c()Lcom/loc/cu;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/loc/bX;-><init>(Landroid/content/Context;Lcom/loc/cv;)V

    iget-object v0, p0, Lcom/loc/cj;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/loc/s;

    invoke-direct {v2}, Lcom/loc/s;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/loc/bX;->aFl(Ljava/lang/String;Lcom/loc/ai;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bs;

    invoke-virtual {v0}, Lcom/loc/bs;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/loc/cj;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/loc/bs;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/loc/cj;->arY:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/loc/aC;->azB(Landroid/content/Context;Lcom/loc/bX;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DexFileManager"

    const-string/jumbo v2, "clearUnSuitableVersion"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
