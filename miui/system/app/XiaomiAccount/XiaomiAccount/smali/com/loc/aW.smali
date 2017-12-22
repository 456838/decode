.class public Lcom/loc/aW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/location/APSServiceBase;


# instance fields
.field private D:Ljava/lang/String;

.field private apA:Lcom/loc/X;

.field apB:Z

.field apC:Ljava/lang/Object;

.field apD:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field apE:J

.field private apF:Z

.field apG:Lorg/json/JSONObject;

.field apH:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field apI:Ljava/net/ServerSocket;

.field apJ:Z

.field apK:Ljava/net/Socket;

.field apL:Z

.field apM:Lcom/loc/aU;

.field apm:Landroid/content/Context;

.field apn:Z

.field apo:Landroid/os/Messenger;

.field private volatile app:Z

.field private apq:Z

.field private apr:Z

.field aps:Lcom/loc/Q;

.field apt:Lcom/loc/bT;

.field apu:Z

.field apv:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field apw:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private apx:I

.field private apy:Z

.field private apz:Z

.field d:Ljava/lang/String;

.field volatile j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/loc/aW;->apn:Z

    iput-object v3, p0, Lcom/loc/aW;->apo:Landroid/os/Messenger;

    iput-boolean v2, p0, Lcom/loc/aW;->app:Z

    iput-boolean v2, p0, Lcom/loc/aW;->apq:Z

    iput-boolean v2, p0, Lcom/loc/aW;->apr:Z

    iput-object v3, p0, Lcom/loc/aW;->d:Ljava/lang/String;

    new-instance v0, Lcom/loc/Q;

    invoke-direct {v0, p0, p0}, Lcom/loc/Q;-><init>(Lcom/loc/aW;Lcom/loc/aW;)V

    iput-object v0, p0, Lcom/loc/aW;->aps:Lcom/loc/Q;

    iput-object v3, p0, Lcom/loc/aW;->apt:Lcom/loc/bT;

    iput-boolean v2, p0, Lcom/loc/aW;->apu:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/loc/aW;->apv:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/loc/aW;->apw:Ljava/util/Vector;

    iput v2, p0, Lcom/loc/aW;->apx:I

    iput-boolean v2, p0, Lcom/loc/aW;->apy:Z

    iput-boolean v2, p0, Lcom/loc/aW;->apz:Z

    iput-object v3, p0, Lcom/loc/aW;->apA:Lcom/loc/X;

    iput-boolean v2, p0, Lcom/loc/aW;->j:Z

    iput-boolean v2, p0, Lcom/loc/aW;->apB:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/aW;->apC:Ljava/lang/Object;

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/aW;->apE:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/aW;->apF:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/aW;->D:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    iput-object v3, p0, Lcom/loc/aW;->apI:Ljava/net/ServerSocket;

    iput-boolean v2, p0, Lcom/loc/aW;->apJ:Z

    iput-object v3, p0, Lcom/loc/aW;->apK:Ljava/net/Socket;

    iput-boolean v2, p0, Lcom/loc/aW;->apL:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aW;->apm:Landroid/content/Context;

    return-void
.end method

.method private a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 1

    iget-object v0, p0, Lcom/loc/aW;->apA:Lcom/loc/X;

    invoke-virtual {v0, p1}, Lcom/loc/X;->a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/aW;->apA:Lcom/loc/X;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/aW;->apA:Lcom/loc/X;

    invoke-virtual {v0, p1}, Lcom/loc/X;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "setExtra"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic aCA(Lcom/loc/aW;Landroid/os/Messenger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/aW;->aCh(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic aCB(Lcom/loc/aW;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/aW;->h()V

    return-void
.end method

.method static synthetic aCC(Lcom/loc/aW;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/aW;->app:Z

    return v0
.end method

.method static synthetic aCD(Lcom/loc/aW;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/aW;->g()V

    return-void
.end method

.method static synthetic aCE(Lcom/loc/aW;Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/aW;->aCi(Ljava/net/Socket;)V

    return-void
.end method

.method private aCg(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    invoke-virtual {v0, p2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "newInstanceAMapLoc"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private aCh(Landroid/os/Messenger;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/loc/bv;->r()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/aW;->apo:Landroid/os/Messenger;

    if-nez v0, :cond_4

    :goto_1
    invoke-static {}, Lcom/loc/bv;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_2
    invoke-static {}, Lcom/loc/bv;->d()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    :goto_3
    invoke-static {}, Lcom/loc/bv;->f()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_2
    :goto_4
    return-void

    :cond_3
    if-eqz p1, :cond_0

    const-string/jumbo v0, "0"

    invoke-static {v0}, Lcom/loc/bv;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "checkConfig"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/aW;->apo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aW;->apo:Landroid/os/Messenger;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/loc/aW;->apA:Lcom/loc/X;

    invoke-virtual {v0}, Lcom/loc/X;->a()V

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/loc/aW;->apy:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/aW;->apy:Z

    iget-object v0, p0, Lcom/loc/aW;->aps:Lcom/loc/Q;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/loc/Q;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_7
    iget-boolean v0, p0, Lcom/loc/aW;->apz:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/aW;->apz:Z

    iget-object v0, p0, Lcom/loc/aW;->aps:Lcom/loc/Q;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/loc/Q;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private aCi(Ljava/net/Socket;)V
    .locals 12

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    const/16 v0, 0x7530

    :try_start_0
    const-string/jumbo v1, "jsonp1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v3, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    if-nez v3, :cond_4

    :cond_0
    move-object v3, v1

    move v1, v0

    :goto_0
    :try_start_3
    sget v7, Lcom/loc/aH;->j:I

    sput v1, Lcom/loc/aH;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v8, p0, Lcom/loc/aW;->apH:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v8, :cond_a

    :goto_1
    iget-object v0, p0, Lcom/loc/aW;->apm:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bd;->aDn(Landroid/content/Context;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-eqz v0, :cond_c

    :cond_1
    :goto_2
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_e

    :cond_2
    :goto_4
    :try_start_4
    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v5, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string/jumbo v2, "HTTP/1.0 200 OK"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Content-Length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    return-void

    :cond_3
    return-void

    :cond_4
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    const-string/jumbo v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v7, v3

    if-le v7, v5, :cond_0

    const/4 v7, 0x1

    aget-object v3, v3, v7

    const-string/jumbo v7, "\\?"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v7, v3

    if-le v7, v5, :cond_0

    const/4 v7, 0x1

    aget-object v3, v3, v7

    const-string/jumbo v7, "&"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v3, v7
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-lez v3, :cond_0

    move v3, v6

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    :goto_6
    :try_start_7
    array-length v8, v7

    if-lt v3, v8, :cond_5

    move-object v3, v0

    goto/16 :goto_0

    :cond_5
    aget-object v8, v7, v3

    const-string/jumbo v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    :cond_6
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    array-length v9, v8

    if-le v9, v5, :cond_6

    const-string/jumbo v9, "to"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    :goto_8
    const-string/jumbo v9, "callback"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    :goto_9
    const-string/jumbo v9, "_"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    :catch_0
    move-exception v1

    move-object v3, v2

    move-object v2, v4

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_a
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "({\'package\':\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/loc/aW;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\',\'error_code\':1,\'error\':\'params error\'})"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v4, "invoke part2"

    invoke-static {v0, v1, v4}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :try_start_9
    new-instance v0, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string/jumbo v1, "HTTP/1.0 200 OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Content-Length:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "invoke part5"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    const/4 v1, 0x1

    :try_start_b
    aget-object v1, v8, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_8

    :cond_9
    const/4 v9, 0x1

    aget-object v0, v8, v9
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_9

    :cond_a
    :try_start_c
    iget-object v8, p0, Lcom/loc/aW;->apH:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v8}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k()J
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-wide v8

    sub-long/2addr v0, v8

    const-wide/16 v8, 0x1388

    cmp-long v0, v0, v8

    if-gtz v0, :cond_b

    move v0, v5

    :goto_b
    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_b
    move v0, v6

    goto :goto_b

    :cond_c
    :try_start_d
    iget-object v0, p0, Lcom/loc/aW;->apA:Lcom/loc/X;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/X;->a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aW;->apH:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/aW;->apH:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a()I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result v0

    if-nez v0, :cond_d

    move-object v0, v2

    :goto_c
    :try_start_e
    sput v7, Lcom/loc/aH;->j:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_d
    :try_start_f
    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string/jumbo v5, "UTF-8"

    const/4 v6, 0x1

    invoke-direct {v1, v3, v6, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string/jumbo v3, "HTTP/1.0 200 OK"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Content-Length:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    :goto_e
    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1

    :cond_d
    :try_start_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "({\'package\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/aW;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\',\'error_code\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/aW;->apH:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\'error\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/aW;->apH:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-result-object v0

    goto/16 :goto_c

    :catch_2
    move-exception v0

    :try_start_12
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v5, "invoke part1"

    invoke-static {v0, v1, v5}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    sput v7, Lcom/loc/aH;->j:I

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    sput v7, Lcom/loc/aH;->j:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    throw v0
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :catch_3
    move-exception v0

    move-object v1, v3

    move-object v3, v2

    move-object v2, v4

    goto/16 :goto_a

    :cond_e
    :try_start_15
    iget-object v1, p0, Lcom/loc/aW;->apH:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/loc/aW;->apH:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "&&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "({\'package\':\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/loc/aW;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\',\'error_code\':0,\'error\':\'\',\'location\':{\'y\':"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ",\'precision\':"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j()F

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ",\'x\':"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "},\'version_code\':\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "2.4.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\',\'version\':\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "2.4.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    iget-object v1, p0, Lcom/loc/aW;->apm:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/bd;->aDn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "({\'package\':\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/aW;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\',\'error_code\':36,\'error\':\'app is background\'})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "({\'package\':\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/aW;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\',\'error_code\':8,\'error\':\'unknown error\'})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result-object v0

    goto :goto_f

    move-exception v0

    :try_start_16
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "invoke part3"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :try_start_17
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_1

    goto/16 :goto_5

    move-exception v0

    :try_start_18
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_1

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    :try_start_19
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    :goto_10
    throw v0
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_1

    move-exception v0

    :try_start_1a
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v3, "invoke part3"

    invoke-static {v0, v1, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    :try_start_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1

    goto/16 :goto_5

    move-exception v0

    :try_start_1c
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_1

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    :try_start_1d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    :goto_11
    throw v0
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1

    move-exception v1

    :try_start_1e
    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invoke part3"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_1
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    :try_start_1f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_1

    goto/16 :goto_e

    move-exception v1

    :try_start_20
    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_1

    goto/16 :goto_e

    :catchall_5
    move-exception v0

    :try_start_21
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    :goto_12
    throw v0

    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    move-exception v1

    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    move-exception v1

    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    move-exception v1

    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    move-exception v1

    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_1

    goto :goto_12

    :catchall_6
    move-exception v0

    move-object v4, v2

    goto/16 :goto_d

    :catchall_7
    move-exception v0

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_d

    :catch_4
    move-exception v0

    move-object v3, v2

    goto/16 :goto_a

    :catch_5
    move-exception v0

    move-object v3, v2

    move-object v2, v4

    goto/16 :goto_a

    :catch_6
    move-exception v1

    move-object v2, v4

    move-object v11, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_a
.end method

.method static synthetic aCj(Lcom/loc/aW;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/loc/aW;->apr:Z

    return p1
.end method

.method static synthetic aCk(Lcom/loc/aW;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/aW;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic aCl(Lcom/loc/aW;)I
    .locals 1

    iget v0, p0, Lcom/loc/aW;->apx:I

    return v0
.end method

.method static synthetic aCm(Lcom/loc/aW;)I
    .locals 2

    iget v0, p0, Lcom/loc/aW;->apx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/loc/aW;->apx:I

    return v0
.end method

.method static synthetic aCn(Lcom/loc/aW;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/aW;->i()V

    return-void
.end method

.method static synthetic aCo(Lcom/loc/aW;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/aW;->f()V

    return-void
.end method

.method static synthetic aCp(Lcom/loc/aW;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/loc/aW;->D:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic aCq(Lcom/loc/aW;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/loc/aW;->apF:Z

    return p1
.end method

.method static synthetic aCr(Lcom/loc/aW;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/aW;->apF:Z

    return v0
.end method

.method static synthetic aCs(Lcom/loc/aW;Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 1

    invoke-direct {p0, p1}, Lcom/loc/aW;->a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aCt(Lcom/loc/aW;)Lcom/loc/X;
    .locals 1

    iget-object v0, p0, Lcom/loc/aW;->apA:Lcom/loc/X;

    return-object v0
.end method

.method static synthetic aCu(Lcom/loc/aW;ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/loc/aW;->aCg(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aCv(Lcom/loc/aW;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/aW;->D:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aCw(Lcom/loc/aW;)Z
    .locals 1

    invoke-direct {p0}, Lcom/loc/aW;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic aCx(Lcom/loc/aW;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/aW;->apr:Z

    return v0
.end method

.method static synthetic aCy(Lcom/loc/aW;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/aW;->e()V

    return-void
.end method

.method static synthetic aCz(Lcom/loc/aW;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/aW;->d()V

    return-void
.end method

.method private c()Z
    .locals 2

    iget-object v1, p0, Lcom/loc/aW;->apC:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/aW;->j:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/aW;->apA:Lcom/loc/X;

    invoke-virtual {v0}, Lcom/loc/X;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "bindService"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/aW;->apq:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/aW;->apq:Z

    iget-object v0, p0, Lcom/loc/aW;->apA:Lcom/loc/X;

    iget-object v1, p0, Lcom/loc/aW;->apm:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/X;->awJ(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "initAuth"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/aW;->app:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/loc/aW;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iput-boolean v1, p0, Lcom/loc/aW;->apF:Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/aW;->D:Ljava/lang/String;

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "init"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/aW;->apm:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/aH;->aAo(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/aW;->apA:Lcom/loc/X;

    iget-object v2, p0, Lcom/loc/aW;->apm:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/loc/X;->awy(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/aW;->apA:Lcom/loc/X;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "api_serverSDK_130905##S128DF1572465B890OE3F7A13167KLEI##"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/aW;->apm:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/bO;->aER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "##"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/aW;->apm:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/bO;->aEV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/loc/X;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string/jumbo v0, "2.4.0"

    invoke-static {v0}, Lcom/loc/aH;->a(Ljava/lang/String;)Lcom/loc/O;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/aW;->apm:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v0, v3, v4}, Lcom/loc/aY;->aCK(Landroid/content/Context;Lcom/loc/O;Ljava/util/Map;Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v2, "key"

    iget-object v3, p0, Lcom/loc/aW;->apm:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/bO;->aEV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v2, "X-INFO"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v2, "AMAP_Location_SDK_Android 2.4.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v1, "netloc"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v1, "gpsstatus"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v1, "nbssid"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v1, "reversegeo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v1, "isOffset"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_2
    iget-object v0, p0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v1, "wait1stwifi"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v1, "autoup"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v1, "upcolmobile"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v1, "enablegetreq"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v1, "wifiactivescan"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/loc/aW;->app:Z

    iget-object v0, p0, Lcom/loc/aW;->apA:Lcom/loc/X;

    iget-object v1, p0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/loc/X;->a(Lorg/json/JSONObject;)V

    :goto_4
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/aW;->D:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/loc/aW;->apF:Z

    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "doInit part1"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    goto/16 :goto_0

    :cond_0
    :try_start_4
    iget-object v0, p0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v1, "reversegeo"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/aW;->D:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loc/aW;->apF:Z

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "doInit part2"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/aW;->D:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/loc/aW;->apF:Z

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "doInit part3"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_1
    :try_start_6
    iget-object v0, p0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v1, "isOffset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2
.end method

.method private h()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/aW;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/aW;->app:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/aW;->apq:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/aW;->apr:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/aW;->apy:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/aW;->apz:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/aW;->apx:I

    iget-object v0, p0, Lcom/loc/aW;->apA:Lcom/loc/X;

    invoke-virtual {v0}, Lcom/loc/X;->b()V

    iget-object v0, p0, Lcom/loc/aW;->apv:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    invoke-static {}, Lcom/loc/a;->a()V

    iget-boolean v0, p0, Lcom/loc/aW;->apn:Z

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/loc/aW;->aps:Lcom/loc/Q;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "threadDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/aW;->aps:Lcom/loc/Q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/Q;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private i()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/aW;->apA:Lcom/loc/X;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/aW;->apA:Lcom/loc/X;

    invoke-virtual {v0}, Lcom/loc/X;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "startColl"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/aW;->apL:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/loc/aU;

    invoke-direct {v0, p0}, Lcom/loc/aU;-><init>(Lcom/loc/aW;)V

    iput-object v0, p0, Lcom/loc/aW;->apM:Lcom/loc/aU;

    iget-object v0, p0, Lcom/loc/aW;->apM:Lcom/loc/aU;

    invoke-virtual {v0}, Lcom/loc/aU;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/aW;->apL:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "startSocket"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/aW;->apI:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/loc/aW;->apK:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :goto_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/loc/aW;->apI:Ljava/net/ServerSocket;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aW;->apM:Lcom/loc/aU;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/aW;->apL:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/aW;->apJ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/aW;->apI:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "stopScocket"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/loc/aW;->apK:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/loc/aW;->aps:Lcom/loc/Q;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/loc/X;

    invoke-direct {v0}, Lcom/loc/X;-><init>()V

    iput-object v0, p0, Lcom/loc/aW;->apA:Lcom/loc/X;

    iget-object v0, p0, Lcom/loc/aW;->apm:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aW;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/aW;->j:Z

    new-instance v0, Lcom/loc/bT;

    invoke-direct {v0, p0}, Lcom/loc/bT;-><init>(Lcom/loc/aW;)V

    iput-object v0, p0, Lcom/loc/aW;->apt:Lcom/loc/bT;

    iget-object v0, p0, Lcom/loc/aW;->apt:Lcom/loc/bT;

    const-string/jumbo v1, "serviceThread"

    invoke-virtual {v0, v1}, Lcom/loc/bT;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/aW;->apt:Lcom/loc/bT;

    invoke-virtual {v0}, Lcom/loc/bT;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/loc/aW;->apC:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/loc/aW;->j:Z

    iget-object v0, p0, Lcom/loc/aW;->apC:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
