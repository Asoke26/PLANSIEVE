SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 121
AND p.CommentCount >= 2
AND p.CommentCount <= 13
AND u.DownVotes = 0
AND u.UpVotes >= 458
AND u.UpVotes <= 857

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;