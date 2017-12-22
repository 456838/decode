.class Lcom/loc/N;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic alx:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/N;->alx:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/N;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/N;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/loc/p;->b()Lcom/loc/p;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/N;->alx:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/N;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/N;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/loc/p;->auA(Lcom/loc/p;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DynamicClassLoader"

    const-string/jumbo v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
