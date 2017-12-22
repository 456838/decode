.class public final Lokio/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lokio/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokio/h;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aIK(Lokio/w;)Lokio/r;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lokio/o;

    invoke-direct {v0, p0}, Lokio/o;-><init>(Lokio/w;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static aIL(Lokio/m;)Lokio/u;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lokio/l;

    invoke-direct {v0, p0}, Lokio/l;-><init>(Lokio/m;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static aIM(Ljava/io/OutputStream;)Lokio/m;
    .locals 1

    new-instance v0, Lokio/e;

    invoke-direct {v0}, Lokio/e;-><init>()V

    invoke-static {p0, v0}, Lokio/h;->aIN(Ljava/io/OutputStream;Lokio/e;)Lokio/m;

    move-result-object v0

    return-object v0
.end method

.method private static aIN(Ljava/io/OutputStream;Lokio/e;)Lokio/m;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Lokio/y;

    invoke-direct {v0, p1, p0}, Lokio/y;-><init>(Lokio/e;Ljava/io/OutputStream;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static aIO(Ljava/net/Socket;)Lokio/m;
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Lokio/h;->aIS(Ljava/net/Socket;)Lokio/g;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lokio/h;->aIN(Ljava/io/OutputStream;Lokio/e;)Lokio/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokio/g;->sink(Lokio/m;)Lokio/m;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static aIP(Ljava/io/InputStream;)Lokio/w;
    .locals 1

    new-instance v0, Lokio/e;

    invoke-direct {v0}, Lokio/e;-><init>()V

    invoke-static {p0, v0}, Lokio/h;->aIQ(Ljava/io/InputStream;Lokio/e;)Lokio/w;

    move-result-object v0

    return-object v0
.end method

.method private static aIQ(Ljava/io/InputStream;Lokio/e;)Lokio/w;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Lokio/q;

    invoke-direct {v0, p1, p0}, Lokio/q;-><init>(Lokio/e;Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static aIR(Ljava/net/Socket;)Lokio/w;
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Lokio/h;->aIS(Ljava/net/Socket;)Lokio/g;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lokio/h;->aIQ(Ljava/io/InputStream;Lokio/e;)Lokio/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokio/g;->source(Lokio/w;)Lokio/w;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static aIS(Ljava/net/Socket;)Lokio/g;
    .locals 1

    new-instance v0, Lokio/z;

    invoke-direct {v0, p0}, Lokio/z;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lokio/h;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static appendingSink(Ljava/io/File;)Lokio/m;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lokio/h;->aIM(Ljava/io/OutputStream;)Lokio/m;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sink(Ljava/io/File;)Lokio/m;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lokio/h;->aIM(Ljava/io/OutputStream;)Lokio/m;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static source(Ljava/io/File;)Lokio/w;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lokio/h;->aIP(Ljava/io/InputStream;)Lokio/w;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
