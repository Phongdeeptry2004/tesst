CREATE DATABASE StoryDB; -- Tạo cơ sở dữ liệu tên là StoryDB

USE StoryDB; -- Sử dụng cơ sở dữ liệu vừa tạo

-- Tạo bảng Stories với các trường thông tin cần thiết
CREATE TABLE Stories (
    id INT AUTO_INCREMENT, -- ID tự động tăng
    title VARCHAR(255), -- Tiêu đề truyện
    author VARCHAR(255), -- Tác giả
    genre VARCHAR(255), -- Thể loại
    introduce TEXT, -- giới thiệu truyệN
    chapter_count INT,
    PRIMARY KEY(id) -- Đặt id làm khóa chính
);
CREATE TABLE Chapters (
    id INT AUTO_INCREMENT, -- ID tự động tăng
    story_id INT, -- ID của truyện mà chương này thuộc về
    chapter_number INT, -- Số thứ tự của chương
    title VARCHAR(255), -- Tiêu đề của chương
    content TEXT, -- Nội dung của chương
    PRIMARY KEY(id), -- Đặt id làm khóa chính
    FOREIGN KEY(story_id) REFERENCES Stories(id) -- Tạo khóa ngoại liên kết với bảng Stories
);
-- Thêm truyện vào bảng Stories
INSERT INTO Stories (title, author, genre, introduce, chapter_count)
VALUES ('Con tiện thỏ này phải chết', 'Nhất Mộng Hoàn Lương', 'tu tiên', '************ TRUYỆN TIỀM NĂNG THÁNG 6 ***********\n\n~~~~~~~~~~KHÔNG THEO KHUÔN MẪU CŨ~~~~~~~~~\n\nTừ khi một con tiện thỏ đến thiên đình về sau, Thiên Đình các đại thần tiên nơi ở thì kéo biểu ngữ: Phòng cháy phòng trộm phòng con thỏ.\n\nĐồng thời, Thực Thần con thỏ nấu nướng bách khoa toàn thư cũng bắt đầu bán chạy.\n\nThường xuyên có thể nhìn thấy một đám thần tiên khua tay các loại pháp bảo, đuổi theo một con thỏ chạy khắp núi, hô hào: "Quần ẩu không quan trọng, da mặt có thể không muốn, con tiện thỏ này phải chết!"\n\nNgười đi đường: Con thỏ kia vì cái gì trâu bò như vậy? Cơ hồ sở hữu thần tiên đều biết hắn, bời vì manh a?\n\nNgười qua đường Ất: Không! Bời vì tiện! Cũng không đúng, là rất tiện!\n\nMột giấc chiêm bao Hoàng Lương sau đó 《 lão nạp phải hoàn tục 》 《 vạn giới trực tiếp chi đại thổ hào 》 về sau lại nhất tác phẩm mới, sắp ra mắt đến mọi người!', 15);
-- Lấy ID của truyện vừa được thêm vào
SET @story_id = LAST_INSERT_ID();
-- Thêm chương vào bảng Chapters
INSERT INTO Chapters (story_id, chapter_number, title, content)
VALUES (@story_id, 1, 'Cầm thú', '<br /><br /><br /><br />-Con thỏ, không phải con thỏ… vẫn là con thỏ! Không phải con thỏ… chết
            tiệt, sao lại vẫn là con thỏ!<br /><br />Ở một bụi cỏ bên cạnh một cái hồ nước lớn, một con thỏ tai to mặt
            lớn ngồi xổm thò đầu vào đối diện với mặt nước, soi đến soi đi, một mặt không vui!<br /><br />-Ai có thể nói
            cho ta biết cuối cùng là xảy ra chuyện gì đây không? Tuy ta không đẹp trai, tuy ta không có bạn gái, cũng
            không có bạn trai, tuy năng lực của ta cũng không mạnh lắm, nhưng dù sao ta cũng là người mà? Sao vừa rơi
            xuống đường cống ngầm ra tới đã thành con thỏ rồi? - Con thỏ ngửa đầu nhìn lên trời kêu to.<br /><br />Kết
            quả là hô to một tiếng xong đột nhiên phát hiện có chỗ không đúng lắm! Chỉ thấy bầu trời như gương, vô cùng
            sáng chói lọi, có thể thấy rõ ràng ngân hà đầy trời! Bầu trời hoàn mỹ như vậy, hắn chưa thấy bao
            giờ!<br /><br />-Ai da, ta đây là biến thành con thỏ trong khu bảo tồn động vật sao? Thế này tuy không cần
            lo lắng về khói bụi dày như sương mù nhưng đào hang tránh né con sói như thế nào thì lại là vấn đề! Nếu
            không, dứt khoát nằm dài trên mặt đất cho chết đi, không chừng lần sau có thể đầu thai tốt một
            chút.<br /><br />Con thỏ oán trách. Đúng lúc này, hắn đột nhiên phát hiện chỗ càng không hợp lý! Vị trí các
            ngôi sao trên bầu trời này hoàn toàn không giống với tinh đồ hắn học khi đến trường!<br /><br />Tỉ mỉ quan
            sát bầu trời này, hắn triệt để trợn tròn mắt!<br /><br />Chỉ thấy trên trời lại có một đám mây sương mù, bên
            trên sương mù lại có mái cong màu vàng kim và vách tường màu đỏ dựng đứng! Trên mái, có đèn neon bay múa,
            ruy băng rợp trời, nhìn khí tượng kia không giống như là ở nhân gian! Có điều đại bộ phận những kiến trúc
            này đều ẩn ở đằng sau những đám mây trắng vô tận, cũng không thấy rõ quá nhiều. Nhưng chỉ vẻn vẹn lộ ra một
            góc kia là hắn biết, sợ là quần thể cung điện kia còn to lớn hơn bất luận cái thành thị gì mà hắn đã
            gặp!<br /><br />Bởi vì hắn nhìn thấy một ngôi sao băng bay qua bị một bàn tay lớn duỗi ra từ trong đám mây
            trắng bắt lấy, tiện tay quăng ra, ném sang một bên khác.<br /><br />-Khốn kiếp, rốt cuộc là ta đây đến đâu
            đây?<br /><br />Hai mắt con thỏ đăm đăm, chỉ cảm giác hai mươi năm nay mình đã sống uổng phí, tất cả thế
            giới quan đều sụp đổ ở thời khắc này!<br /><br />Đúng lúc này, tai con thỏ tê rần, hắn oa oa hét
            lớn:<br /><br />-Ai vậy! Buông tay! Đừng có kéo tai!<br /><br />Kết quả một lời của hắn thốt ra lại thành
            tiếng kêu chi chi của loài thỏ! Lúc này hắn mới phát hiện, hắn không chỉ biến thành con thỏ mà quyền lợi
            được nói chuyện cũng bị tước đoạt, nhất thời lệ rơi đầy mặt, mẹ nó chứ!<br /><br />Hắn quyết định, mặc kệ
            đối diện là ai, trước tiên cứ tát cho nó một bàn tay! Đắc tội thì đắc tội! Cùng lắm là chết chứ gì! Chết
            cũng tốt hơn là làm một con thỏ!<br /><br />Kết quả không đợi hắn kịp phản ứng, đầu đã bị đặt trên một chỗ
            mềm nhũn, đến hô hấp cũng khó khăn, trong lòng vô cùng bi phẫn kêu lên:<br /><br />-Đây là yêu nghiệt phương
            nào? Bây giết một con thỏ còn cần ngạt chết sao? Nổ đầu hiểu không? Biết chảo dầu chứ? Nếu còn không được,
            bây dùng đá nện vào đầu ấy!<br /><br />-Ngọc Nhi, tìm em nửa ngày trời, em chạy tới đây làm
            gì?<br /><br />Một giọng nói ôn nhu bên trong còn mang theo dí dỏm vang lên, giọng nói kia cũng không mị mà
            vô cùng thanh thuần, nghe vào trong tai, rơi ở trong lòng, con thỏ chỉ cảm thấy cả người đều bị giọng nói
            này gột rửa một lần, toàn thân thoải mái!<br /><br />Nghe giọng là nữ nhân? Nhưng mà nữ nhân thì thế nào? Nữ
            nhân là có thể tùy tiện ấn con thỏ vào cho ngạt chết à, mà đây là ấn vào chỗ nào?<br /><br />Thỏ mãnh liệt ý
            thức được cái gì, dùng móng vuốt ấn ấn, mềm mềm, đột nhiên hắn cảm thấy làm một con thỏ có vẻ như… cũng
            được.<br /><br />Một ý niệm lập tức dâng lên trong đầu hắn, thượng đế là công bằng, cho ngươi một trái táo
            ngọt, quay người sẽ cho ngươi một bàn tay. Nói cách khác, giọng nói êm tai, bình thường người đều không được
            đẹp lắm! Ngực lại lớn thế này, mặt chắc chắn là không đẹp.<br /><br />Ngay tại lúc con thỏ suy nghĩ lung
            tung, nữ tử lại xách hắn lên, trong nháy mắt đó, hắn chỉ cảm thấy một cỗ không khí mát mẻ xen lẫn một cỗ mùi
            thơm nhàn nhạt của thân thể nữ nhân xông vào mũi, vô cùng thoải mái. Lại hơi ngửa đầu nhìn lại, nhất thời
            mắt con thỏ trừng như là chuông đồng, nháy cũng không nháy lấy một cái!<br /><br />Chỉ thấy trước mắt xuất
            hiện một nàng thiếu nữ thanh xuân, một thân quần áo dài trắng, tóc búi cài trâm đơn giản, khuôn mặt kia, con
            thỏ không biết nên hình dung như thế nào, nếu như nhất định phải miêu tả, nhất tiếu khuynh nhân quốc có lẽ
            miễn cưỡng đủ!<br /><br />Một đôi mắt kia, như là nước, sóng mắt hơi hơi dập dờn mang theo vài phần dí dỏm
            và cổ linh tinh quái, cái mũi hơi hơi hếch lên, không phải loại sống mũi cao như người phương tây, mà chính
            là mũi ngọc tinh xảo đặc sắc của người phương đông, miệng anh đào nhỏ nhỏ vừa đúng tô điểm trên gương mặt
            hoàn mỹ kia. Đây là một nữ nhân mỹ lệ, hoàn hảo, đáng yêu không có tì vết!<br /><br />Trong nháy mắt đó, con
            thỏ chỉ có một ý niệm trong đầu, mẹ nó, đây tuyệt đối là kiệt tác của Nữ Oa nương nương!<br /><br />-Ngọc
            Nhi? Ngọc Nhi? Em làm sao thế? - Nữ nhân hơi lo lắng nhìn nhìn con thỏ.<br /><br />Lúc này con thỏ mới hồi
            phục lại tinh thần, đối phương là đang gọi hắn đây! Cùng với đó trong đầu hắn hiện lên một đoạn trí nhớ,
            đồng thời đoạn ký ức này phi tốc tiến hành dung hợp với trí nhớ của hắn.<br /><br />Nơi này không phải Địa
            Cầu, đây là một tinh cầu hoang vu! Hắn vốn chính là một con thỏ sinh trưởng ở chỗ này! Mà lại là một con thỏ
            duy nhất, mỗi ngày gặm vỏ cây, lên cây ăn quế hoa, miễn cưỡng sinh hoạt.<br /><br />Nghĩ tới đây, con thỏ
            lại đần ra, gặm vỏ cây? Lên cây? Hắn vô ý thức giật nhẹ cái tai lớn của chính mình, không sai mà, đây là con
            thỏ mà, không phải chuột cũng không phải mèo mà!<br /><br />Có vẻ như cái con thỏ hắn không bình thường thì
            phải.<br /><br />Dù sao, trí nhớ về sinh hoạt hàng ngày của con thỏ rất đơn giản, ngày nào cũng là không
            ngừng ăn, ăn, ăn, mà răng miệng lại vô cùng tốt, mặc kệ là thứ đồ gì, dù sao thì chỉ cần cắn nhẹ một ngụm,
            cái đồ chơi gì tiến vào bên trong miệng đều là giòn, nhai nhai vài cái thì vào bụng, vậy nhưng cũng không có
            cái gì làm hỏng bụng, duy nhất để con thỏ phiền muộn chính là, thân thể này của hắn có vẻ như chưa từng có
            cảm giác no bụng!<br /><br />Trí nhớ từ nhỏ đến lớn đều là đang ăn, vậy mà lại lúc nào cũng đói. Coi như có
            lúc nào đó không đói bụng thì cũng sẽ muốn cắn chút gì đó, nhai nhai vài cái, dù sao dạ dày của hắn cũng tựa
            như một cái động không đáy, vĩnh viễn ăn không đủ no! Càng đừng nói đến cảm giác ăn quá no! Cảm giác ấy quá
            xa xỉ!<br /><br />Cứ như vậy một con thỏ trốn ở nơi hoang vu như thế này không biết bao nhiêu năm, bỗng
            nhiên có một ngày, một nữ tử từ đằng xa bay tới, một người, lẻ loi trơ trọi rơi xuống chỗ này, sau đó thì
            ngồi ở một chỗ khóc.<br /><br />Tiền thân của con thỏ lén lút chạy tới, gặm gặm cái túi mà nữ tử kia mang
            đến, sau đó còn không biết chạy, còn ngồi ở một bên vừa ăn vừa xem người ta khóc.<br /><br />Hậu quả không
            cần nói cũng biết, bị người ta bắt tại trận, từ đó bị giữ lại, trở thành sủng vật của người ta. Mặc dù là
            sủng vật, thế nhưng cũng không có mò được chỗ tốt gì, bởi vì nữ tử kia cũng chẳng tốt hơn gì con thỏ, nghèo
            rớt mồng tơi y như vậy.<br /><br />Biến hóa duy nhất chính là, trước kia con thỏ leo cây một mình, hiện tại
            biến thành một người một thỏ cùng nhau leo cây.<br /><br />Hắn không biết thời gian như thế trôi qua bao
            lâu, dù sao cũng không lâu lắm.<br /><br />Đi ra tè một bãi, quẹo một vòng, kết quả nhìn thấy một con hàng
            cao lớn thô kệch ngồi xổm ở trong bụi cỏ nhìn em gái, con thỏ cũng đúng là đồ đần, thừa dịp tên kia không
            chú ý, cắn cây rìu to trong tay tên kia một miếng! Thế là cắn cái rìu ra một cái lỗ thủng! Sắt thép vào
            miệng cũng là… giòn.<br /><br />');

-- đoạn mã để thêm chương mới tự động .
    

INSERT INTO Chapters (story_id, chapter_number, title, content)
SELECT id, chapter_count + 1, 'New Chapter Title', 'New Chapter Content'
FROM Stories
WHERE title = 'Con tiện thỏ này phải chết';

UPDATE Stories
SET chapter_count = chapter_count + 1
WHERE title = 'Con tiện thỏ này phải chết';