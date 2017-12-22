.class public final Lcom/loc/Z;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final amK:Lcom/loc/T;

.field private final amL:[Z

.field final synthetic amM:Lcom/loc/bB;

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/loc/bB;Lcom/loc/T;)V
    .locals 1

    iput-object p1, p0, Lcom/loc/Z;->amM:Lcom/loc/bB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/loc/Z;->amK:Lcom/loc/T;

    invoke-static {p2}, Lcom/loc/T;->awp(Lcom/loc/T;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/loc/bB;->aEh(Lcom/loc/bB;)I

    move-result v0

    new-array v0, v0, [Z

    :goto_0
    iput-object v0, p0, Lcom/loc/Z;->amL:[Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/loc/bB;Lcom/loc/T;Lcom/loc/bU;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/loc/Z;-><init>(Lcom/loc/bB;Lcom/loc/T;)V

    return-void
.end method

.method static synthetic axp(Lcom/loc/Z;)Lcom/loc/T;
    .locals 1

    iget-object v0, p0, Lcom/loc/Z;->amK:Lcom/loc/T;

    return-object v0
.end method

.method static synthetic axq(Lcom/loc/Z;)[Z
    .locals 1

    iget-object v0, p0, Lcom/loc/Z;->amL:[Z

    return-object v0
.end method

.method static synthetic axr(Lcom/loc/Z;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/loc/Z;->d:Z

    return p1
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 4

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "be greater than 0 and less than the maximum value count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/Z;->amM:Lcom/loc/bB;

    invoke-static {v2}, Lcom/loc/bB;->aEh(Lcom/loc/bB;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/loc/Z;->amM:Lcom/loc/bB;

    invoke-static {v0}, Lcom/loc/bB;->aEh(Lcom/loc/bB;)I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/loc/Z;->amM:Lcom/loc/bB;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/loc/Z;->amK:Lcom/loc/T;

    invoke-static {v0}, Lcom/loc/T;->awm(Lcom/loc/T;)Lcom/loc/Z;

    move-result-object v0

    if-ne v0, p0, :cond_2

    iget-object v0, p0, Lcom/loc/Z;->amK:Lcom/loc/T;

    invoke-static {v0}, Lcom/loc/T;->awp(Lcom/loc/T;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/loc/Z;->amK:Lcom/loc/T;

    invoke-virtual {v0, p1}, Lcom/loc/T;->b(I)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    new-instance v2, Lcom/loc/bt;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/loc/bt;-><init>(Lcom/loc/Z;Ljava/io/OutputStream;Lcom/loc/bU;)V

    monitor-exit v1

    return-object v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/loc/Z;->amL:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/loc/Z;->amM:Lcom/loc/bB;

    invoke-static {v0}, Lcom/loc/bB;->aEi(Lcom/loc/bB;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/loc/bB;->d()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v0
.end method

.method public a()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/loc/Z;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/Z;->amM:Lcom/loc/bB;

    invoke-static {v0, p0, v2}, Lcom/loc/bB;->aEj(Lcom/loc/bB;Lcom/loc/Z;Z)V

    :goto_0
    iput-boolean v2, p0, Lcom/loc/Z;->e:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/Z;->amM:Lcom/loc/bB;

    invoke-static {v0, p0, v1}, Lcom/loc/bB;->aEj(Lcom/loc/bB;Lcom/loc/Z;Z)V

    iget-object v0, p0, Lcom/loc/Z;->amM:Lcom/loc/bB;

    iget-object v1, p0, Lcom/loc/Z;->amK:Lcom/loc/T;

    invoke-static {v1}, Lcom/loc/T;->awo(Lcom/loc/T;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/bB;->c(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/loc/Z;->amM:Lcom/loc/bB;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/loc/bB;->aEj(Lcom/loc/bB;Lcom/loc/Z;Z)V

    return-void
.end method
