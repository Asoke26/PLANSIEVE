SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 0
AND p.ViewCount >= 735.0
AND p.ViewCount <= 2095.0
AND p.AnswerCount >= 3.0
AND p.CommentCount >= 6
AND p.CommentCount <= 14
AND p.FavoriteCount <= 54.0
AND u.Views >= 279
AND u.DownVotes >= 17
AND u.DownVotes <= 44
AND u.UpVotes >= 1
AND u.UpVotes <= 683
AND ph.CreationDate >= 191
AND ph.CreationDate <= 881
AND p.CreationDate >= 394
AND p.CreationDate <= 1228

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;