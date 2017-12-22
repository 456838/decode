.class public Lcom/xiaomi/passport/uicontroller/y;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Ja:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/uicontroller/y;->Ja:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Nv(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;
    .locals 1

    instance-of v0, p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Ji:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Je:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Jc:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Jb:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidParameterException;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Jd:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Jf:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Jh:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Jj:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    goto :goto_0
.end method


# virtual methods
.method public NA(Lcom/xiaomi/accountsdk/account/data/e;Lcom/xiaomi/passport/uicontroller/E;)Lcom/xiaomi/passport/uicontroller/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/e;",
            "Lcom/xiaomi/passport/uicontroller/E;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should implement set password callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/uicontroller/P;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/passport/uicontroller/P;-><init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/passport/uicontroller/E;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/v;

    new-instance v2, Lcom/xiaomi/passport/uicontroller/Q;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/passport/uicontroller/Q;-><init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/accountsdk/account/data/e;)V

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/passport/uicontroller/v;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/w;)V

    sget-object v0, Lcom/xiaomi/passport/uicontroller/y;->Ja:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object v1
.end method

.method public NB(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;Lcom/xiaomi/passport/uicontroller/B;)Lcom/xiaomi/passport/uicontroller/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;",
            "Lcom/xiaomi/passport/uicontroller/B;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should implements login callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/uicontroller/J;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaomi/passport/uicontroller/J;-><init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/passport/uicontroller/B;Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/v;

    new-instance v2, Lcom/xiaomi/passport/uicontroller/K;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/passport/uicontroller/K;-><init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/passport/uicontroller/v;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/w;)V

    sget-object v0, Lcom/xiaomi/passport/uicontroller/y;->Ja:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object v1
.end method

.method public Nw(Lcom/xiaomi/accountsdk/account/data/B;Lcom/xiaomi/passport/uicontroller/A;)Lcom/xiaomi/passport/uicontroller/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/B;",
            "Lcom/xiaomi/passport/uicontroller/A;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should implements phone user info callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/uicontroller/H;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/passport/uicontroller/H;-><init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/passport/uicontroller/A;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/v;

    new-instance v2, Lcom/xiaomi/passport/uicontroller/I;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/passport/uicontroller/I;-><init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/accountsdk/account/data/B;)V

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/passport/uicontroller/v;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/w;)V

    sget-object v0, Lcom/xiaomi/passport/uicontroller/y;->Ja:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object v1
.end method

.method public Nx(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;Lcom/xiaomi/passport/uicontroller/C;)Lcom/xiaomi/passport/uicontroller/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;",
            "Lcom/xiaomi/passport/uicontroller/C;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should implements register callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/uicontroller/L;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/passport/uicontroller/L;-><init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/passport/uicontroller/C;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/v;

    new-instance v2, Lcom/xiaomi/passport/uicontroller/M;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/passport/uicontroller/M;-><init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)V

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/passport/uicontroller/v;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/w;)V

    sget-object v0, Lcom/xiaomi/passport/uicontroller/y;->Ja:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object v1
.end method

.method public Ny(Lcom/xiaomi/accountsdk/account/data/r;Lcom/xiaomi/passport/uicontroller/z;)Lcom/xiaomi/passport/uicontroller/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/r;",
            "Lcom/xiaomi/passport/uicontroller/z;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should implements login callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/uicontroller/F;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/passport/uicontroller/F;-><init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/passport/uicontroller/z;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/v;

    new-instance v2, Lcom/xiaomi/passport/uicontroller/G;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/passport/uicontroller/G;-><init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/accountsdk/account/data/r;)V

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/passport/uicontroller/v;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/w;)V

    sget-object v0, Lcom/xiaomi/passport/uicontroller/y;->Ja:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object v1
.end method

.method public Nz(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/D;)Lcom/xiaomi/passport/uicontroller/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/a;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/passport/uicontroller/D;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should implement send set pwd ticket callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/uicontroller/N;

    invoke-direct {v0, p0, p3}, Lcom/xiaomi/passport/uicontroller/N;-><init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/passport/uicontroller/D;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/v;

    new-instance v2, Lcom/xiaomi/passport/uicontroller/O;

    invoke-direct {v2, p0, p1, p2}, Lcom/xiaomi/passport/uicontroller/O;-><init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/passport/uicontroller/v;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/w;)V

    sget-object v0, Lcom/xiaomi/passport/uicontroller/y;->Ja:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object v1
.end method
