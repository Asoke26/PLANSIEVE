SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 5
AND p.CommentCount >= 0
AND p.CommentCount <= 12
AND u.DownVotes = 34
AND u.UpVotes >= 75
AND u.UpVotes <= 1160

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;