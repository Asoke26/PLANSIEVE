SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 58
AND u.Views <= 5554
AND u.DownVotes >= 23
AND u.DownVotes <= 57
AND u.UpVotes <= 149
AND c.CreationDate >= 913
AND c.CreationDate <= 1201
AND ph.CreationDate >= 522
AND ph.CreationDate <= 718
AND v.CreationDate >= 655
AND v.CreationDate <= 885

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;